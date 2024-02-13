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
}
