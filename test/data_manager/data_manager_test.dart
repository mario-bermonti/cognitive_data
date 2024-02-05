import 'package:cognitive_data/data_manager/data_manager.dart';
import 'package:cognitive_data/models/device.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      'addDevice correctly defines a Device model and assigns it to the Device field',
      () {
    WidgetsFlutterBinding.ensureInitialized();
    final Device device = Device(participantID: '101', sessionID: '001');
    final DataManager manager = DataManager();
    manager.addDevice(
        sessionID: device.sessionID, participantID: device.participantID);

    expect(manager.device.participantID, device.participantID);
    expect(manager.device.sessionID, device.sessionID);
  });

  test(
      'addSessionMetadata correctly defines a SessionMetadata model and assigns it to the SessionMetadata field',
      () {
    final SessionMetadata metadata = SessionMetadata(
      participantID: '101',
      sessionID: '001',
      startTime: DateTime.now(),
      endTime: DateTime.now(),
    );

    final DataManager manager = DataManager();
    manager.addSessionMetadata(
      sessionID: metadata.sessionID,
      participantId: metadata.participantID,
      timeStart: metadata.startTime,
      timeEnd: metadata.endTime,
    );

    expect(manager.sessionMetadata.participantID, metadata.participantID);
    expect(manager.sessionMetadata.sessionID, metadata.sessionID);
    expect(manager.sessionMetadata.startTime, metadata.startTime);
    expect(manager.sessionMetadata.endTime, metadata.endTime);
  });
}
