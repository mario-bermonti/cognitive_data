import 'package:cognitive_data/models/device.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:cognitive_data/models/trial.dart';

/// Serves as the design contract between the different implementations of
/// the databases.
abstract class DB {
  void addSession({required Session session}) {}

  void addDevice({required Device device}) {}

  void addTrial({required Trial trial}) {}

  void addTrials({required List<Trial> trials}) {}
}
