/// Represents the characteristics of the device on which the data
/// was collected.
class Device {
  final String participantID;
  final String sessionID;
  final String platform;
  final double height;
  final double width;
  final double aspectRatio;

  Device({
    required this.participantID,
    required this.sessionID,
    required this.platform,
    required this.height,
    required this.width,
    required this.aspectRatio,
  });
}
