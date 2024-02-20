import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cognitive_data/databases/drift_db/models/session.dart';

void main() {
  late DriftDB db;

  setUp(() {
    db = DriftDB(NativeDatabase.memory());
  });

  tearDown(() async {
    await db.close();
  });

  test(
      'DriftSession.fromSession correctly instantiates a DriftSession object from a base Session model',
      () async {
    final Session baseSession = Session(
      participantID: '101',
      sessionID: '001',
      startTime: DateTime.now(),
      endTime: DateTime.now(),
    );

    final DriftSessionsCompanion driftSession =
        DriftSessions.fromSession(baseSession);

    expect(driftSession.participantID.value, baseSession.participantID);
    expect(driftSession.sessionID.value, baseSession.sessionID);
    expect(driftSession.startTime.value, baseSession.startTime);
    expect(driftSession.endTime.value, baseSession.endTime);
  });
}
