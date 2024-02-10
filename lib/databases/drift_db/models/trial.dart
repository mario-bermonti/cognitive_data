import 'package:cognitive_data/databases/drift_db/models/session.dart';
import 'package:drift/drift.dart';

class Trials extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get participantID =>
      text().references(DriftSessionMetadata, #participantID)();
  TextColumn get sessionID =>
      text().references(DriftSessionMetadata, #sessionID)();

  /// [trialType] specifies the type of trial (practice or experimental)
  TextColumn get trialType => text()();
  TextColumn get stim => text()();
  TextColumn get resp => text()();
}
