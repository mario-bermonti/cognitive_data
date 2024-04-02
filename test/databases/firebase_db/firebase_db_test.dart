import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cognitive_data/databases/firebase_db/firebase_db.dart';
import 'package:cognitive_data/models/device.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:cognitive_data/models/trial.dart';
import 'package:cognitive_data/models/trial_type.dart';
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

      final Map<String, dynamic> sessionFirebaseData =
          sessionFirebaseSnapshot.data() as Map<String, dynamic>;

      expect(sessionFirebaseData, sessionLocal.toJson());
    },
  );
  test(
    "FirebaseDB.addDevice correctly adds data to Firebase",
    () async {
      TestWidgetsFlutterBinding.ensureInitialized();
      final Device deviceLocal = Device(
        participantID: db.participantID,
        sessionID: db.sessionID,
      );

      await db.addDevice(device: deviceLocal);

      final DocumentSnapshot deviceFirebaseSnapshot = await db.db
          .doc('$currentSessionPath/deviceMetadata/deviceMetadata')
          .get();

      final Map<String, dynamic> deviceFirebaseData =
          deviceFirebaseSnapshot.data() as Map<String, dynamic>;

      expect(deviceFirebaseData, deviceLocal.toJson());
    },
  );
  test(
    "FirebaseDB.addTrial correctly adds data to Firebase",
    () async {
      final Trial trialLocal = Trial(
        participantID: db.participantID,
        sessionID: db.sessionID,
        trialType: TrialType.practice,
        stim: '456',
        response: '654',
      );

      await db.addTrial(trial: trialLocal);

      final QuerySnapshot trialSnapshot =
          await db.db.collection('$currentSessionPath/trials').get();

      final Map<String, dynamic> trialFirebaseData =
          trialSnapshot.docs.first.data() as Map<String, dynamic>;

      expect(trialFirebaseData, trialLocal.toJson());
    },
  );
}
