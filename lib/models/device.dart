/// Represents the characteristics of the device on which the data
/// was collected.
class Device {
  final String participantID;
  final String sessionID;
  late final String platform;
  late final double height;
  late final double width;
  late final double aspectRatio;

  Device({
    required this.participantID,
    required this.sessionID,
}
