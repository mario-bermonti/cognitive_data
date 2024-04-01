import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cognitive_data/databases/firebase_db/firebase_db.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late FirebaseDB db;
  late String currentSessionPath;

  setUp(() {
    db = FirebaseDB(
      FakeFirebaseFirestore(),
      participantID: '101',
      sessionID: '001',
      taskName: 'dsb',
    );
    currentSessionPath =
        'participants/${db.participantID}/cognitive_tasks/${db.taskName}/sessions/${db.sessionID}';
  });

  test(
    "FirebaseDB.addSession correctly adds data to Firebase",
    () async {
      final Session sessionLocal = Session(
        participantID: db.participantID,
        sessionID: db.sessionID,
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );

      await db.addSession(session: sessionLocal);

      final DocumentSnapshot sessionFirebaseSnapshot = await db.db
          .doc('$currentSessionPath/sessionMetadata/sessionMetadata')
          .get();

      Map<String, dynamic> sessionFirebaseData =
          sessionFirebaseSnapshot.data() as Map<String, dynamic>;

      expect(sessionFirebaseData, sessionLocal.toJson());
    },
  );
}
