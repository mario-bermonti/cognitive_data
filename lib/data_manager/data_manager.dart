import 'package:cognitive_data/models/db_base.dart';
import 'package:cognitive_data/models/device.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:cognitive_data/models/trial.dart';
import 'package:cognitive_data/models/trial_type.dart';

class InMemoryDB implements DB {
  late final Device device;
  late final SessionMetadata sessionMetadata;
  final List<Trial> trials = <Trial>[];

  /// Add metadata about the device used to collect data
  @override
  void addDevice({
    required String sessionID,
    required String participantID,
  }) {
    device = Device(
      participantID: participantID,
      sessionID: sessionID,
    );
  }

  /// Add metadata about the data collection session
  @override
  void addSessionMetadata(
      {required String sessionID,
      required String participantID,
      required DateTime startTime,
      required DateTime endTime}) {
    sessionMetadata = SessionMetadata(
      participantID: participantID,
      sessionID: sessionID,
      startTime: startTime,
      endTime: endTime,
    );
  }

  /// Add data for a single trial
  @override
  void addTrial(
      {required String sessionID,
      required String participantID,
      required String stim,
      required String resp,
      required TrialType trialType}) {
    final Trial trial = Trial(
      participantID: participantID,
      sessionID: sessionID,
      trialType: trialType,
      stim: stim,
      response: resp,
    );
    trials.add(trial);
  }
}
