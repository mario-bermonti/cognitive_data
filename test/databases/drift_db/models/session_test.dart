import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cognitive_data/databases/drift_db/models/session.dart';

void main() {
  late final DriftDB db;

  setUp(() {
    db = DriftDB(NativeDatabase.memory());
  });

  tearDown(() async {
    await db.close();
  });

  test('Correctly instantiate a Drift.Session object from a base session model',
      () async {
    final BaseSessionMetadata baseSession = BaseSessionMetadata(
      participantID: '101',
      sessionID: '001',
      startTime: DateTime.now(),
      endTime: DateTime.now(),
    );

    final SessionMetadataCompanion session =
        await SessionMetadata.fromSessionMetadata(baseSession);

    expect(session.participantID.value, baseSession.participantID);
    expect(session.sessionID.value, baseSession.sessionID);
    expect(session.startTime.value, baseSession.startTime);
    expect(session.endTime.value, baseSession.endTime);
  });
}
