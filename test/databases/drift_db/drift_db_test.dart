import 'dart:io';
import 'dart:math';

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
    "Drift.addTrials inserts a trial into the DriftDB with same appropriate data fields",
    () async {
      final Trial baseTrial = Trial(
          participantID: '101',
          sessionID: '001',
          trialType: TrialType.practice,
          stim: '456',
          response: '654');

      await db.addTrial(trial: baseTrial);

      final DriftTrialData driftTrial =
          await db.select(db.driftTrial).getSingle();

      expect(driftTrial.participantID, baseTrial.participantID);
      expect(driftTrial.sessionID, baseTrial.sessionID);
      expect(driftTrial.trialType, baseTrial.trialType);
      expect(driftTrial.stim, baseTrial.stim);
      expect(driftTrial.response, baseTrial.response);
    },
  );
  test(
    "Drift.addDevice inserts a device into the DriftDb with a the same appropriate data fields",
    () async {
      TestWidgetsFlutterBinding.ensureInitialized();
      final Device baseDevice = Device(
        participantID: '101',
        sessionID: '001',
      );

      await db.addDevice(device: baseDevice);

      final DriftDeviceData driftDevice =
          await db.select(db.driftDevice).getSingle();

      expect(driftDevice.participantID, baseDevice.participantID);
      expect(driftDevice.sessionID, baseDevice.sessionID);
      expect(driftDevice.platform, baseDevice.platform);
      expect(driftDevice.height, baseDevice.height);
      expect(driftDevice.width, baseDevice.width);
      expect(driftDevice.aspectRatio, baseDevice.aspectRatio);
    },
  );

  test(
    "Drift.addSession inserts a session into the DriftDB with appropriate data fields",
    () async {
      final SessionMetadata baseSession = SessionMetadata(
        participantID: '101',
        sessionID: '001',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );

      await db.addSessionMetadata(session: baseSession);

      final DriftSessionMetadataData driftSession =
          await db.select(db.driftSessionMetadata).getSingle();

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
    "DriftDB.init",
    () {
      late Directory tempDir;
      late DriftDB db;

      setUp(() async {
        tempDir = await Directory.systemTemp.createTemp('test_dir');
        final String path = "${tempDir.path}/cognitive_data_test.sqlite";
        db = await DriftDB.init(path: path);
      });

      tearDown(() async {
        await db.close();
        await tempDir.delete(recursive: true);
      });

      test(
        "Returns a drift NativeDatabase that contains at least 1 table",
        () {
          final int numberOfTables = db.allTables.toList().length;
          expect(numberOfTables, greaterThan(0));
        },
      );
    },
  );
}
