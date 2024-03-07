import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cognitive_data/models/db_base.dart';
import 'package:cognitive_data/models/trial.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:cognitive_data/models/device.dart';

/// DB used to store data in Firebase.
class FirebaseDB implements DB {
  late final FirebaseFirestore _db;

  void init() {
    _db = FirebaseFirestore.instance;
  }

  @override
  void addDevice({required Device device}) {
    // TODO: implement addDevice
  }

  @override
  void addSession({required Session session}) {
    // TODO: implement addSession
  }

  @override
  void addTrial({required Trial trial}) {
    // TODO: implement addTrial
  }

  @override
  void addTrials({required List<Trial> trials}) {
    // TODO: implement addTrials
  }
}
