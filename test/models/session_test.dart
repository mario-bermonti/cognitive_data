import 'package:cognitive_data/models/session.dart';
import 'package:test/test.dart';

void main() {
  test('Session.toString produces correct representation', () {
    final Session session = Session(
      participantID: '101',
      sessionID: '001',
      startTime: DateTime.now(),
      endTime: DateTime.now(),
    );
    final String strRep = "Session(participantID: ${session.participantID}, "
        "sessionID: ${session.sessionID}, "
        "startTime: ${session.startTime}, "
        "endTime: ${session.endTime})";
    expect(session.toString(), strRep);
  });
}
