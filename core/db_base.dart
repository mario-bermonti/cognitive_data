import 'trial_type.dart';

abstract class DB {
  void addSession({
    required String sessionID,
    required String participantId,
    required DateTime timeStart,
    required DateTime timeEnd,
  }) {}

  void addDevice({
    required String sessionID,
    required String participantId,
  }) {}

  void addTrial({
    required String sessionID,
    required String participantId,
    required String stim,
    required String resp,
    required TrialType trialType,
  }) {}

  void initDB() {}
}
