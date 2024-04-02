import 'package:cognitive_data/databases/firebase_db/firebase_db.dart';
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
}
