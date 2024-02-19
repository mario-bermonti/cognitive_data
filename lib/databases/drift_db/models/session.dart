import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:drift/drift.dart';

/// Drift table analogous to the base [SessionMetadata] model. It contains the
/// same data and can be easily instantiated from a base [SessionMetadata]
/// model. See the base [SessionMetadata] model for details.
class DriftSessionMetadata extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get participantID => text()();
  TextColumn get sessionID => text()();
  DateTimeColumn get startTime => dateTime()();
  DateTimeColumn get endTime => dateTime()();

  /// Instantiates a [DriftSessionMetadataCompanion] from a [SessionMetadata]
  /// base model. This [DriftSessionMetadataCompanion] can be inserted into
  /// the drift db.
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
