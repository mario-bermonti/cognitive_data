import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:cognitive_data/databases/drift_db/models/session.dart';
import 'package:cognitive_data/models/trial.dart';
import 'package:drift/drift.dart';

/// Drift table analogous to the base [Trial] model. It contains the same data
/// and can be easily instantiated from a base [Trial] model. See the
/// base [Trial] model for details.
class DriftTrials extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get participantID =>
      text().references(DriftSessions, #participantID)();
  TextColumn get sessionID => text().references(DriftSessions, #sessionID)();

  /// [trialType] specifies the type of trial (practice or experimental)
  TextColumn get trialType => text()();
  TextColumn get stim => text()();
  TextColumn get response => text()();

  /// Instantiates a [DriftTrialCompanion] from a [Trial] base model. This
  /// [DriftTrialCompanion] can be inserted into the drift db.
  static DriftTrialsCompanion fromTrial(Trial baseTrial) {
    final DriftTrialsCompanion driftTrial = DriftTrialsCompanion(
      participantID: Value(baseTrial.participantID),
      sessionID: Value(baseTrial.sessionID),
      trialType: Value(baseTrial.trialType),
      stim: Value(baseTrial.stim),
      response: Value(baseTrial.response),
    );
    return driftTrial;
  }
}
