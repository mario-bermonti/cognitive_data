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
    final InMemoryDB manager = InMemoryDB();
    manager.addDevice(device: device);

    expect(manager.device.participantID, device.participantID);
    expect(manager.device.sessionID, device.sessionID);
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

    final InMemoryDB manager = InMemoryDB();
    manager.addSession(session: session);

    expect(manager.session.participantID, session.participantID);
    expect(manager.session.sessionID, session.sessionID);
    expect(manager.session.startTime, session.startTime);
    expect(manager.session.endTime, session.endTime);
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
    final InMemoryDB manager = InMemoryDB();

    manager.addTrial(trial: trial);
    final Trial trialInManager = manager.trials.first;

    expect(trialInManager.sessionID, trial.sessionID);
    expect(trialInManager.participantID, trial.participantID);
    expect(trialInManager.stim, trial.stim);
    expect(trialInManager.response, trial.response);
    expect(trialInManager.trialType, trial.trialType);
  });
}
