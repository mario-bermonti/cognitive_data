import 'dart:io';

import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:cognitive_data/models/device.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:cognitive_data/models/trial.dart';
import 'package:cognitive_data/models/trial_type.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late DriftDB db;

  setUp(() {
    db = DriftDB(NativeDatabase.memory());
  });

  tearDown(() async {
    await db.close();
  });

  test(
    "Drift.addTrial correctly inserts a trial into the DriftDB",
    () async {
      final Trial baseTrial = Trial(
        participantID: '101',
        sessionID: '001',
        trialType: TrialType.practice,
        stim: '456',
        response: '654',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );

      await db.addTrial(trial: baseTrial);

      final DriftTrial driftTrial = await db.select(db.driftTrials).getSingle();

      expect(driftTrial.participantID, baseTrial.participantID);
      expect(driftTrial.sessionID, baseTrial.sessionID);
      expect(driftTrial.trialType, baseTrial.trialType);
      expect(driftTrial.stim, baseTrial.stim);
      expect(driftTrial.response, baseTrial.response);
    },
  );
  test(
    "Given a list of valid Trial objects, Drift.addTrials correctly inserts the trials into the DriftDB",
    () async {
      final Trial trial1 = Trial(
        participantID: '101',
        sessionID: '001',
        trialType: TrialType.practice,
        stim: '123',
        response: '123',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );

      final Trial trial2 = Trial(
        participantID: '102',
        sessionID: '002',
        trialType: TrialType.experimental,
        stim: '456',
        response: '654',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );
      final List<Trial> baseTrials = [trial1, trial2];

      await db.addTrials(trials: baseTrials);
      final List<DriftTrial> driftTrials =
          await db.select(db.driftTrials).get();

      expect(driftTrials.first.participantID, baseTrials.first.participantID);
      expect(driftTrials.last.participantID, baseTrials.last.participantID);
    },
  );
  test(
    "Drift.addDevice correctly inserts a device into the DriftDb",
    () async {
      TestWidgetsFlutterBinding.ensureInitialized();
      final Device baseDevice = Device(
        participantID: '101',
        sessionID: '001',
      );

      await db.addDevice(device: baseDevice);

      final DriftDevice driftDevice =
          await db.select(db.driftDevices).getSingle();

      expect(driftDevice.participantID, baseDevice.participantID);
      expect(driftDevice.sessionID, baseDevice.sessionID);
      expect(driftDevice.platform, baseDevice.platform);
      expect(driftDevice.height, baseDevice.height);
      expect(driftDevice.width, baseDevice.width);
      expect(driftDevice.aspectRatio, baseDevice.aspectRatio);
    },
  );

  test(
    "Drift.addSession correctly inserts a session into the DriftDB",
    () async {
      final Session baseSession = Session(
        participantID: '101',
        sessionID: '001',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );

      await db.addSession(session: baseSession);

      final DriftSession driftSession =
          await db.select(db.driftSessions).getSingle();

      expect(driftSession.participantID, baseSession.participantID);
      expect(driftSession.sessionID, baseSession.sessionID);

      /// Drift truncates milliseconds so we accept less than 1s differences
      /// between the actual and expected.
      const Duration tolerance = Duration(seconds: 1);
      final Duration differenceStartTime =
          driftSession.startTime.difference(baseSession.startTime);
      expect(differenceStartTime, lessThan(tolerance));

      final Duration differenceEndTime =
          driftSession.endTime.difference(baseSession.startTime);
      expect(differenceEndTime, lessThan(tolerance));
    },
  );
  group(
    "DriftDB.init returns a drift NativeDatabase",
    () {
      late Directory tempDir;
      late DriftDB tempDB;

      setUp(() async {
        tempDir = await Directory.systemTemp.createTemp('test_dir');
        final String path = "${tempDir.path}/cognitive_data_test.sqlite";
        tempDB = DriftDB.init(path: path);
      });

      tearDown(() async {
        await tempDB.close();
        await tempDir.delete(recursive: true);
      });

      test(
        "that contains at least 1 table",
        () {
          final int numberOfTables = tempDB.allTables.toList().length;
          expect(numberOfTables, greaterThan(0));
        },
      );
    },
  );
}
