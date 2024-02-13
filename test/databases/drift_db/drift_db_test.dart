import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:cognitive_data/models/trial.dart';
import 'package:cognitive_data/models/trial_type.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final DriftDB db;

  setUp(() {
    db = DriftDB(NativeDatabase.memory());
  });

  tearDown(() async {
    await db.close();
  });

  group(
    "DriftDB.addTrials adds trials to DriftDB given a Trial object",
    () {
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

          final trialFromDB = await db.select(db.driftTrial).getSingle();

          expect(trialFromDB.participantID, baseTrial.participantID);
          expect(trialFromDB.sessionID, baseTrial.sessionID);
          expect(trialFromDB.trialType, baseTrial.trialType);
          expect(trialFromDB.stim, baseTrial.stim);
          expect(trialFromDB.response, baseTrial.response);
        },
      );
    },
  );
}
