import 'package:cognitive_data/models/session.dart';
import 'package:test/test.dart';

void main() {
  test('SessionMetadata.toString produces correct representation', () {
    final DateTime startTime = DateTime.now();
    final DateTime endTime = DateTime.now();
    final String str_rep = "Session(participantID: 101, sessionID: 001, "
        "startTime: $startTime, endTime: $endTime)";
    final SessionMetadata sessionMetadata = SessionMetadata(
      participantID: '101',
      sessionID: '001',
      startTime: startTime,
      endTime: endTime,
    );
    expect(sessionMetadata.toString(), str_rep);
  });
}
