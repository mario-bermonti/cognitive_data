import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:drift/drift.dart';

/// Drift table analogous to the base [Session] model. It contains the
/// same data and can be easily instantiated from a base [Session]
/// model. See the base [Session] model for details.
class DriftSessions extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get participantID => text()();
  TextColumn get sessionID => text()();
  DateTimeColumn get startTime => dateTime()();
  DateTimeColumn get endTime => dateTime()();

  /// Instantiates a [DriftSessionsCompanion] from a [Session]
  /// base model. This [DriftSessionsCompanion] can be inserted into
  /// the drift db.
  static DriftSessionsCompanion fromSession(
    Session baseSession,
  ) {
    final DriftSessionsCompanion driftSession = DriftSessionsCompanion(
      participantID: Value(baseSession.participantID),
      sessionID: Value(baseSession.sessionID),
      startTime: Value(baseSession.startTime),
      endTime: Value(baseSession.endTime),
    );
    return driftSession;
  }
}
