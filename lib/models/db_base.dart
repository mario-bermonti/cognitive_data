import 'package:cognitive_data/models/device.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:cognitive_data/models/trial.dart';

import 'trial_type.dart';

/// Serves as the design contract between the different implementations of
/// the databases.
abstract class DB {
  void addSessionMetadata({required SessionMetadata session}) {}

  void addDevice({required Device device}) {}

  void addTrial({required Trial trial}) {}
}
