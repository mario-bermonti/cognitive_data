import 'package:json_annotation/json_annotation.dart';

part 'session.g.dart';

/// Represents the metadata for data collection session.
@JsonSerializable()
class Session {
  /// Unique identifier for the participant
  final String participantID;

  /// Unique identifier for the current session of the  current participant.
  final String sessionID;

  /// Time at which the session started.
  final DateTime startTime;

  /// Time at which the session ended.
  final DateTime endTime;

  Session({
    required this.participantID,
    required this.sessionID,
    required this.startTime,
    required this.endTime,
  });

  @override
  String toString() {
    return "Session(participantID: $participantID, sessionID: $sessionID, "
        "startTime: $startTime, endTime: $endTime)";
  }

  /// Convert the [Session] object to its json representation.
  /// This method is particularly useful when uploading data to Firebase and
  /// similar no-sql dbs.
  Map<String, dynamic> toJson() => _$SessionToJson(this);
}
