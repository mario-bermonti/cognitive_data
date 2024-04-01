import 'dart:io';

import 'package:flutter/material.dart';

/// Represents the characteristics of the device on which the data
/// was collected. It serves as metadata about the data collected.
class Device {
  /// Unique identifier for the participant
  final String participantID;

  /// Unique identifier for the current session of the
  /// current participant.
  final String sessionID;

  /// The device's operating system. Automatically provided by
  /// the Device object.
  late final String platform;

  /// Height of the device's screen. Automatically provided by
  /// the Device object.
  late final double height;

  /// Width of the device's screen. Automatically provided by the Device object.
  late final double width;

  /// AspectRatio of the device's screen. Automatically provided by
  /// the Device object.
  late final double aspectRatio;

  Device({
    required this.participantID,
    required this.sessionID,
  }) {
    platform = Platform.operatingSystem;
    height =
        WidgetsBinding.instance.platformDispatcher.displays.first.size.height;
    width =
        WidgetsBinding.instance.platformDispatcher.displays.first.size.width;
    aspectRatio = WidgetsBinding
        .instance.platformDispatcher.displays.first.size.aspectRatio;
  }

  @override
  String toString() {
    return "Device(participantID: $participantID, sessionID: $sessionID, "
        "platform: $platform, height: $height, width: $width, "
        "aspectRatio: $aspectRatio)";
  }
}
