import 'package:cognitive_data/models/session.dart';
import 'package:test/test.dart';

void main() {
  test('SessionMetadata.toString produces correct representation', () {
    final SessionMetadata sessionMetadata = SessionMetadata(
      participantID: '101',
      sessionID: '001',
      startTime: DateTime.now(),
      endTime: DateTime.now(),
    );
    final String strRep =
        "Session(participantID: ${sessionMetadata.participantID}, "
        "sessionID: ${sessionMetadata.sessionID}, "
        "startTime: ${sessionMetadata.startTime}, "
        "endTime: ${sessionMetadata.endTime})";
    expect(sessionMetadata.toString(), strRep);
  });
}
