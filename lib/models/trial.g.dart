// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trial _$TrialFromJson(Map<String, dynamic> json) => Trial(
      participantID: json['participantID'] as String,
      sessionID: json['sessionID'] as String,
      trialType: $enumDecode(_$TrialTypeEnumMap, json['trialType']),
      stim: json['stim'] as String,
      response: json['response'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
    );

Map<String, dynamic> _$TrialToJson(Trial instance) => <String, dynamic>{
      'participantID': instance.participantID,
      'sessionID': instance.sessionID,
      'trialType': instance.trialType,
      'stim': instance.stim,
      'response': instance.response,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
    };

const _$TrialTypeEnumMap = {
  TrialType.practice: 'practice',
  TrialType.experimental: 'experimental',
};
