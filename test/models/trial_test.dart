import 'package:cognitive_data/models/trial.dart';
import 'package:cognitive_data/models/trial_type.dart';
import 'package:test/test.dart';

void main() {
  test('toString produces correct representation', () async {
    const String strRep = "Trial(participantID: 101, sessionID: 001, "
        "trialType: practice, stim: stimuli, "
        "response: participant response)";
    final Trial trial = Trial(
      participantID: '101',
      sessionID: '001',
      trialType: TrialType.practice,
      stim: 'stimuli',
      response: 'participant response',
    );
    expect(trial.toString(), strRep);
  });
}
