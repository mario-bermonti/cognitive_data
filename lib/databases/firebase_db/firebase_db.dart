import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cognitive_data/models/db_base.dart';
import 'package:cognitive_data/models/trial.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:cognitive_data/models/device.dart';

/// DB used to store data in Firebase.
/// Requires passing a [FirebaseFirestore] instance at instantiation.
class FirebaseDB implements DB {
  final FirebaseFirestore db;
  final String participantID;
  final String sessionID;
  String taskName;

  FirebaseDB(
    this.db, {
    required this.participantID,
    required this.sessionID,
    required this.taskName,
  });

  /// Adds [device] metadata to [FirebaseFirestore].
  /// Stores the [device] metadata in an independent doc inside a collection
  /// named `device`. It will override previous [device] metadata for
  /// the session.
  @override
  Future<void> addDevice({required Device device}) async {
    final Map<String, dynamic> deviceData = device.toJson();

    final CollectionReference deviceRef = db
        .collection('cognitive_measures')
        .doc(taskName)
        .collection('participants')
        .doc(participantID)
        .collection('sessions')
        .doc(sessionID)
        .collection('device');

    await deviceRef.doc('device').set(deviceData);
  }

  /// Adds metadata for the [session] to [FirebaseFirestore].
  /// Stores the [session] metadata in independent docs inside a collection
  /// named `session`. It will override previous [session] metadata for
  /// the session.
  @override
  Future<void> addSession({required Session session}) async {
    final Map<String, dynamic> sessionData = session.toJson();

    final CollectionReference sessionRef = db
        .collection('cognitive_measures')
        .doc(taskName)
        .collection('participants')
        .doc(participantID)
        .collection('sessions')
        .doc(sessionID)
        .collection('session');

    await sessionRef.doc('session').set(sessionData);
  }

  /// Adds a single [trial] to [FirebaseFirestore].
  /// Stores each [trial] data in an independent doc inside a collection
  /// named `trials`.
  @override
  Future<void> addTrial({required Trial trial}) async {
    final Map<String, dynamic> trialMap = trial.toJson();

    final CollectionReference trialsRef = db
        .collection('cognitive_measures')
        .doc(taskName)
        .collection('participants')
        .doc(participantID)
        .collection('sessions')
        .doc(sessionID)
        .collection('trials');

    await trialsRef.add(trialMap);
  }

  /// Adds a list of [trial] to [FirebaseFirestore].
  /// Stores each [trial] data in an independent doc inside a collection
  /// named `trials`.
  @override
  Future<void> addTrials({required List<Trial> trials}) async {
    final CollectionReference trialsRef = db.collection(
        'cognitive_measures/$taskName/participants/$participantID/sessions/$sessionID/trials');

    final WriteBatch batch = db.batch();

    for (final Trial trial in trials) {
      final Map<String, dynamic> trialMap = trial.toJson();

      batch.set(trialsRef.doc(), trialMap);
    }
    await batch.commit();
  }
}
