import 'package:cognitive_data/data_manager/data_manager.dart';
import 'package:cognitive_data/models/device.dart';
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
        sessionID: device.sessionID, participantId: device.participantID);

    expect(manager.device.participantID, device.participantID);
    expect(manager.device.sessionID, device.sessionID);
  });
}
