import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:cognitive_data/databases/drift_db/models/trial.dart';
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
      'DriftTrial.fromTrial correctly instantiates a DriftTrial object from a base Trial model',
      () {
    final Trial baseTrial = Trial(
        participantID: '101',
        sessionID: '001',
        trialType: TrialType.practice,
        stim: '456',
        response: '654');

    final DriftTrialCompanion driftTrial = DriftTrial.fromTrial(baseTrial);

    expect(driftTrial.participantID.value, baseTrial.participantID);
    expect(driftTrial.sessionID.value, baseTrial.sessionID);
    expect(driftTrial.trialType.value, baseTrial.trialType);
    expect(driftTrial.stim.value, baseTrial.stim);
    expect(driftTrial.response.value, baseTrial.response);
  });
}
