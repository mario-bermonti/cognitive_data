abstract class DB {
  void addSession({
    required String sessionID,
    required String participantId,
    required DateTime timeStart,
    required DateTime timeEnd,
  }) {}
}
