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
    );

Map<String, dynamic> _$TrialToJson(Trial instance) => <String, dynamic>{
      'participantID': instance.participantID,
      'sessionID': instance.sessionID,
      'trialType': instance.trialType,
      'stim': instance.stim,
      'response': instance.response,
    };

const _$TrialTypeEnumMap = {
  TrialType.practice: 'practice',
  TrialType.experimental: 'experimental',
};
