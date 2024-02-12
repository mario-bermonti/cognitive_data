import 'package:cognitive_data/models/db_base.dart';
import 'package:cognitive_data/models/device.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:cognitive_data/models/trial.dart';

class InMemoryDB implements DB {
  late final Device device;
  late final SessionMetadata sessionMetadata;
  final List<Trial> trials = <Trial>[];

  /// Add metadata about the device used to collect data
  @override
  void addDevice({required Device device}) {
    this.device = device;
  }

  /// Add metadata about the data collection session
  @override
  void addSessionMetadata({required SessionMetadata session}) {
    sessionMetadata = session;
  }

  /// Add data for a single trial
  @override
  void addTrial({required Trial trial}) {
    trials.add(trial);
  }
}
