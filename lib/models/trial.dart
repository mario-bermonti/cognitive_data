import 'trial_type.dart';

/// Model for the data of a single trial
class Trial {
  final String participantID;
  final String sessionID;
  late final String trialType;
  final String stim;
  final String response;

  Trial({
    required this.participantID,
    required this.sessionID,
    required TrialType trialType,
    required this.stim,
    required this.response,
  }) {
    this.trialType = trialType.name;
  }

  @override
  String toString() {
    return "Trial(participantID: $participantID, sessionID: $sessionID, "
        "trialType: $trialType, stim: $stim, response: $response)";
  }
}
