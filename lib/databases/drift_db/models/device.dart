import 'package:cognitive_data/databases/drift_db/models/session.dart';
import 'package:drift/drift.dart';

class DriftDevice extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get participantID =>
      text().references(DriftSessionMetadata, #participantID)();
  TextColumn get sessionID =>
      text().references(DriftSessionMetadata, #sessionID)();
  TextColumn get platform => text()();
  RealColumn get height => real()();
  RealColumn get width => real()();
  RealColumn get aspectRatio => real()();
}
