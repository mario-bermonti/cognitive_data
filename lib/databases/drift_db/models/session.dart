import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:drift/drift.dart';

class SessionMetadata extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get participantID => text()();
  TextColumn get sessionID => text()();
  DateTimeColumn get startTime => dateTime()();
  DateTimeColumn get endTime => dateTime()();

  static SessionMetadataCompanion fromSessionMetadata(
    BaseSessionMetadata baseSessionsMetadata,
  ) {
    final SessionMetadataCompanion sessionMetadata = SessionMetadataCompanion(
      participantID: Value(baseSessionsMetadata.participantID),
      sessionID: Value(baseSessionsMetadata.sessionID),
      startTime: Value(baseSessionsMetadata.startTime),
      endTime: Value(baseSessionsMetadata.endTime),
    );
    return sessionMetadata;
  }
}
