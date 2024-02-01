/// Represents the metadata for data collection session.
class SessionMetadata {
  final String participantID;
  final String sessionID;
  final DateTime startTime;
  final DateTime endTime;

  SessionMetadata({
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
}
