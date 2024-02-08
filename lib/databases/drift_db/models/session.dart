import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:drift/drift.dart';

class DriftSessionMetadata extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get participantID => text()();
  TextColumn get sessionID => text()();
  DateTimeColumn get startTime => dateTime()();
  DateTimeColumn get endTime => dateTime()();

  static DriftSessionMetadataCompanion fromSessionMetadata(
    SessionMetadata baseSession,
  ) {
    final DriftSessionMetadataCompanion driftSessionMetadata =
        DriftSessionMetadataCompanion(
      participantID: Value(baseSession.participantID),
      sessionID: Value(baseSession.sessionID),
      startTime: Value(baseSession.startTime),
      endTime: Value(baseSession.endTime),
    );
    return driftSessionMetadata;
  }
}
