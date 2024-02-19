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
      'DriftSessionMetadata.fromSessionMetadata correctly instantiates a DriftSessionMetadata object from a base SessionMetadata model',
      () async {
    final SessionMetadata baseSession = SessionMetadata(
      participantID: '101',
      sessionID: '001',
      startTime: DateTime.now(),
      endTime: DateTime.now(),
    );

    final DriftSessionMetadataCompanion driftSession =
        DriftSessionMetadata.fromSessionMetadata(baseSession);

    expect(driftSession.participantID.value, baseSession.participantID);
    expect(driftSession.sessionID.value, baseSession.sessionID);
    expect(driftSession.startTime.value, baseSession.startTime);
    expect(driftSession.endTime.value, baseSession.endTime);
  });
}
