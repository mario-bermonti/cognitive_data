import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cognitive_data/databases/firebase_db/firebase_db.dart';
import 'package:cognitive_data/models/device.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:cognitive_data/models/trial.dart';
import 'package:cognitive_data/models/trial_type.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cognitive_data example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'cognitive_data example'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  final _db = FirebaseDB(
    FirebaseFirestore.instance,
    participantID: '101',
    sessionID: '001',
    taskName: 'dsb',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Save data to firebase',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ElevatedButton(
              onPressed: () async {
                final Session session = Session(
                  participantID: _db.participantID,
                  sessionID: _db.sessionID,
                  startTime: DateTime.now(),
                  endTime: DateTime.now(),
                );
                await _db.addSession(session: session);
              },
              child: const Text("Save Session metadata to firebase"),
            ),
            ElevatedButton(
              onPressed: () async {
                final Device device =
                    Device(participantID: '101', sessionID: '001');
                await _db.addDevice(device: device);
              },
              child: const Text("Save Device metadata to firebase"),
            ),
            ElevatedButton(
              onPressed: () async {
                final Trial trial = Trial(
                  participantID: _db.participantID,
                  sessionID: _db.sessionID,
                  trialType: TrialType.practice,
                  stim: '123',
                  response: '321',
                  startTime: DateTime.now(),
                  endTime: DateTime.now(),
                );

                await _db.addTrial(trial: trial);
              },
              child: const Text("Save trial to firebase"),
            ),
            ElevatedButton(
              onPressed: () async {
                final Trial trial1 = Trial(
                  participantID: _db.participantID,
                  sessionID: _db.sessionID,
                  trialType: TrialType.practice,
                  stim: '123',
                  response: '321',
                  startTime: DateTime.now(),
                  endTime: DateTime.now(),
                );
                final Trial trial2 = Trial(
                  participantID: _db.participantID,
                  sessionID: _db.sessionID,
                  trialType: TrialType.practice,
                  stim: '456',
                  response: '654',
                  startTime: DateTime.now(),
                  endTime: DateTime.now(),
                );
                final List<Trial> trials = <Trial>[trial1, trial2];

                await _db.addTrials(trials: trials);
              },
              child: const Text("Save trials to firebase"),
            )
          ],
        ),
      ),
    );
  }
}
