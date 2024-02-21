import 'package:cognitive_data/databases/in_memory_db.dart';
import 'package:cognitive_data/models/device.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:cognitive_data/models/trial.dart';
import 'package:cognitive_data/models/trial_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      'addDevice correctly defines a Device model and assigns it to the Device field',
      () {
    WidgetsFlutterBinding.ensureInitialized();
    final Device device = Device(participantID: '101', sessionID: '001');
    final InMemoryDB inMemoryDB = InMemoryDB();
    inMemoryDB.addDevice(device: device);

    expect(inMemoryDB.device.participantID, device.participantID);
    expect(inMemoryDB.device.sessionID, device.sessionID);
  });

  test(
      'addSession correctly defines a Session model and assigns it to the Session field',
      () {
    final Session session = Session(
      participantID: '101',
      sessionID: '001',
      startTime: DateTime.now(),
      endTime: DateTime.now(),
    );

    final InMemoryDB inMemoryDB = InMemoryDB();
    inMemoryDB.addSession(session: session);

    expect(inMemoryDB.session.participantID, session.participantID);
    expect(inMemoryDB.session.sessionID, session.sessionID);
    expect(inMemoryDB.session.startTime, session.startTime);
    expect(inMemoryDB.session.endTime, session.endTime);
  });

  test('addTrial correctly defines a Trial model and adds it to the trial list',
      () {
    final Trial trial = Trial(
      participantID: '101',
      sessionID: '001',
      trialType: TrialType.practice,
      stim: '987',
      response: '987',
    );
    final InMemoryDB inMemoryDB = InMemoryDB();

    inMemoryDB.addTrial(trial: trial);
    final Trial trialInMemoryDB = inMemoryDB.trials.first;

    expect(trialInMemoryDB.sessionID, trial.sessionID);
    expect(trialInMemoryDB.participantID, trial.participantID);
    expect(trialInMemoryDB.stim, trial.stim);
    expect(trialInMemoryDB.response, trial.response);
    expect(trialInMemoryDB.trialType, trial.trialType);
  });

  test(
    "Given a list of valid Trial objects, addTrials correctly adds the received trials to the list of trials",
    () {
      final Trial trial1 = Trial(
        participantID: '101',
        sessionID: '001',
        trialType: TrialType.practice,
        stim: '123',
        response: '123',
      );

      final Trial trial2 = Trial(
        participantID: '102',
        sessionID: '002',
        trialType: TrialType.experimental,
        stim: '456',
        response: '654',
      );

      final List<Trial> trials = [trial1, trial2];

      final InMemoryDB db = InMemoryDB();
      db.addTrials(trials: trials);

      expect(db.trials.first.participantID, trial1.participantID);
      expect(db.trials.last.participantID, trial2.participantID);
    },
  );
}
