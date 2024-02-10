import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:cognitive_data/databases/drift_db/models/session.dart';
import 'package:cognitive_data/models/trial.dart';
import 'package:drift/drift.dart';

class DriftTrial extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get participantID =>
      text().references(DriftSessionMetadata, #participantID)();
  TextColumn get sessionID =>
      text().references(DriftSessionMetadata, #sessionID)();

  /// [trialType] specifies the type of trial (practice or experimental)
  TextColumn get trialType => text()();
  TextColumn get stim => text()();
  TextColumn get response => text()();

  /// Instantiate a [DriftTrialCompanion] from a Trial base model. This
  /// method serves as a constructor.
  static DriftTrialCompanion fromTrial(Trial baseTrial) {
    final DriftTrialCompanion driftTrial = DriftTrialCompanion(
      participantID: Value(baseTrial.participantID),
      sessionID: Value(baseTrial.sessionID),
      trialType: Value(baseTrial.trialType),
      stim: Value(baseTrial.stim),
      response: Value(baseTrial.response),
    );
    return driftTrial;
  }
}
