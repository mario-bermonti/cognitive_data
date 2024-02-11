import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:cognitive_data/databases/drift_db/models/session.dart';
import 'package:cognitive_data/models/trial.dart';
import 'package:drift/drift.dart';

/// Drift table analogous to the base [Trial] model. It contains the same data
/// and can be easily instantiated from a base [Trial] model. See the
/// base [Trial] model for details.
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

  /// Instantiates a [DriftTrialCompanion] from a [Trial] base model. This
  /// [DriftTrialCompanion] can be inserted into the drift db.
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
