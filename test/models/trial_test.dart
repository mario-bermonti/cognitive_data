import 'package:cognitive_data/models/trial.dart';
import 'package:cognitive_data/models/trial_type.dart';
import 'package:test/test.dart';

void main() {
  test('Trial.toString produces correct representation', () {
    final Trial trial = Trial(
      participantID: '101',
      sessionID: '001',
      trialType: TrialType.practice,
      stim: 'stimuli',
      response: 'participant response',
    );
    final String strRep =
        "Trial(participantID: ${trial.participantID}, sessionID: ${trial.sessionID}, "
        "trialType: ${trial.trialType}, stim: ${trial.stim}, "
        "response: ${trial.response})";
    expect(trial.toString(), strRep);
  });

  test(
    "Trial.toJson returns a valid json representation",
    () {
      final Trial trial = Trial(
        participantID: '101',
        sessionID: '001',
        trialType: TrialType.practice,
        stim: 'stimuli',
        response: 'participant response',
      );

      final Map<String, dynamic> trialJson = trial.toJson();

      expect(trialJson, isMap);
    },
  );
}
