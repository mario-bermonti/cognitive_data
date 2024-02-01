import 'package:cognitive_data/models/device.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Device.toString() produces appropriate representation', () {
    WidgetsFlutterBinding.ensureInitialized();
    final Device device = Device(participantID: '101', sessionID: '001');
    final String strRep = "Device(participantID: ${device.participantID}, "
        "sessionID: ${device.sessionID}, platform: ${device.platform}, "
        "height: ${device.height}, width: ${device.width}, "
        "aspectRatio: ${device.aspectRatio})";

    expect(device.toString(), strRep);
  });
}
