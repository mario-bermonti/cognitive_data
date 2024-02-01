import 'trial_type.dart';

/// Model for the data of a single trial
class Trial {
  final String participantID;
  final String sessionID;
  final TrialType trialType;
  final String stim;
  final String response;

  Trial({
    required this.participantID,
    required this.sessionID,
    required this.trialType,
    required this.stim,
    required this.response,
  });

  @override
  String toString() {
    return "Trial(participantID: $participantID, sessionID: $sessionID,"
        "trialType: $trialType, stim: $stim, response: $response)";
  }
}
