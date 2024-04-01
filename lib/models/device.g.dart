// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device _$DeviceFromJson(Map<String, dynamic> json) => Device(
      participantID: json['participantID'] as String,
      sessionID: json['sessionID'] as String,
    )
      ..platform = json['platform'] as String
      ..height = (json['height'] as num).toDouble()
      ..width = (json['width'] as num).toDouble()
      ..aspectRatio = (json['aspectRatio'] as num).toDouble();

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
      'participantID': instance.participantID,
      'sessionID': instance.sessionID,
      'platform': instance.platform,
      'height': instance.height,
      'width': instance.width,
      'aspectRatio': instance.aspectRatio,
    };
