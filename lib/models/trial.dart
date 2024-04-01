import 'package:json_annotation/json_annotation.dart';

import 'trial_type.dart';

part 'trial.g.dart';

/// Represents the data of a single trial.
@JsonSerializable()
class Trial {
  /// Unique identifier for the participant
  final String participantID;

  /// Unique identifier for the current session of the
  /// current participant.
  final String sessionID;

  /// Whether the trial is a practice ([TrialType.practice]) or
  /// experimental ([TrialType.experimental]).
  late final String trialType;

  /// Stimulus presented to the participant.
  final String stim;

  /// Response provided by the participant.
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

  /// Convert the [Trial] object to its json representation.
  /// This method is particularly useful when uploading data to Firebase and
  /// similar no-sql dbs.
  Map<String, dynamic> toJson() => _$TrialToJson(this);
}
