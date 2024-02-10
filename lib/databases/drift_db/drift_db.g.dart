// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class DriftSessionMetadataData extends DataClass
    implements Insertable<DriftSessionMetadataData> {
  final int id;
  final String participantID;
  final String sessionID;
  final DateTime startTime;
  final DateTime endTime;
  DriftSessionMetadataData(
      {required this.id,
      required this.participantID,
      required this.sessionID,
      required this.startTime,
      required this.endTime});
  factory DriftSessionMetadataData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DriftSessionMetadataData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      participantID: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}participant_i_d'])!,
      sessionID: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}session_i_d'])!,
      startTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_time'])!,
      endTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_time'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['participant_i_d'] = Variable<String>(participantID);
    map['session_i_d'] = Variable<String>(sessionID);
    map['start_time'] = Variable<DateTime>(startTime);
    map['end_time'] = Variable<DateTime>(endTime);
    return map;
  }

  DriftSessionMetadataCompanion toCompanion(bool nullToAbsent) {
    return DriftSessionMetadataCompanion(
      id: Value(id),
      participantID: Value(participantID),
      sessionID: Value(sessionID),
      startTime: Value(startTime),
      endTime: Value(endTime),
    );
  }

  factory DriftSessionMetadataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftSessionMetadataData(
      id: serializer.fromJson<int>(json['id']),
      participantID: serializer.fromJson<String>(json['participantID']),
      sessionID: serializer.fromJson<String>(json['sessionID']),
      startTime: serializer.fromJson<DateTime>(json['startTime']),
      endTime: serializer.fromJson<DateTime>(json['endTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'participantID': serializer.toJson<String>(participantID),
      'sessionID': serializer.toJson<String>(sessionID),
      'startTime': serializer.toJson<DateTime>(startTime),
      'endTime': serializer.toJson<DateTime>(endTime),
    };
  }

  DriftSessionMetadataData copyWith(
          {int? id,
          String? participantID,
          String? sessionID,
          DateTime? startTime,
          DateTime? endTime}) =>
      DriftSessionMetadataData(
        id: id ?? this.id,
        participantID: participantID ?? this.participantID,
        sessionID: sessionID ?? this.sessionID,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
      );
  @override
  String toString() {
    return (StringBuffer('DriftSessionMetadataData(')
          ..write('id: $id, ')
          ..write('participantID: $participantID, ')
          ..write('sessionID: $sessionID, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, participantID, sessionID, startTime, endTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftSessionMetadataData &&
          other.id == this.id &&
          other.participantID == this.participantID &&
          other.sessionID == this.sessionID &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime);
}

class DriftSessionMetadataCompanion
    extends UpdateCompanion<DriftSessionMetadataData> {
  final Value<int> id;
  final Value<String> participantID;
  final Value<String> sessionID;
  final Value<DateTime> startTime;
  final Value<DateTime> endTime;
  const DriftSessionMetadataCompanion({
    this.id = const Value.absent(),
    this.participantID = const Value.absent(),
    this.sessionID = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
  });
  DriftSessionMetadataCompanion.insert({
    this.id = const Value.absent(),
    required String participantID,
    required String sessionID,
    required DateTime startTime,
    required DateTime endTime,
  })  : participantID = Value(participantID),
        sessionID = Value(sessionID),
        startTime = Value(startTime),
        endTime = Value(endTime);
  static Insertable<DriftSessionMetadataData> custom({
    Expression<int>? id,
    Expression<String>? participantID,
    Expression<String>? sessionID,
    Expression<DateTime>? startTime,
    Expression<DateTime>? endTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (participantID != null) 'participant_i_d': participantID,
      if (sessionID != null) 'session_i_d': sessionID,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
    });
  }

  DriftSessionMetadataCompanion copyWith(
      {Value<int>? id,
      Value<String>? participantID,
      Value<String>? sessionID,
      Value<DateTime>? startTime,
      Value<DateTime>? endTime}) {
    return DriftSessionMetadataCompanion(
      id: id ?? this.id,
      participantID: participantID ?? this.participantID,
      sessionID: sessionID ?? this.sessionID,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (participantID.present) {
      map['participant_i_d'] = Variable<String>(participantID.value);
    }
    if (sessionID.present) {
      map['session_i_d'] = Variable<String>(sessionID.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<DateTime>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<DateTime>(endTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftSessionMetadataCompanion(')
          ..write('id: $id, ')
          ..write('participantID: $participantID, ')
          ..write('sessionID: $sessionID, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime')
          ..write(')'))
        .toString();
  }
}

class $DriftSessionMetadataTable extends DriftSessionMetadata
    with TableInfo<$DriftSessionMetadataTable, DriftSessionMetadataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftSessionMetadataTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _participantIDMeta =
      const VerificationMeta('participantID');
  @override
  late final GeneratedColumn<String?> participantID = GeneratedColumn<String?>(
      'participant_i_d', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _sessionIDMeta = const VerificationMeta('sessionID');
  @override
  late final GeneratedColumn<String?> sessionID = GeneratedColumn<String?>(
      'session_i_d', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _startTimeMeta = const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<DateTime?> startTime = GeneratedColumn<DateTime?>(
      'start_time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _endTimeMeta = const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<DateTime?> endTime = GeneratedColumn<DateTime?>(
      'end_time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, participantID, sessionID, startTime, endTime];
  @override
  String get aliasedName => _alias ?? 'drift_session_metadata';
  @override
  String get actualTableName => 'drift_session_metadata';
  @override
  VerificationContext validateIntegrity(
      Insertable<DriftSessionMetadataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('participant_i_d')) {
      context.handle(
          _participantIDMeta,
          participantID.isAcceptableOrUnknown(
              data['participant_i_d']!, _participantIDMeta));
    } else if (isInserting) {
      context.missing(_participantIDMeta);
    }
    if (data.containsKey('session_i_d')) {
      context.handle(
          _sessionIDMeta,
          sessionID.isAcceptableOrUnknown(
              data['session_i_d']!, _sessionIDMeta));
    } else if (isInserting) {
      context.missing(_sessionIDMeta);
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    } else if (isInserting) {
      context.missing(_endTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftSessionMetadataData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return DriftSessionMetadataData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DriftSessionMetadataTable createAlias(String alias) {
    return $DriftSessionMetadataTable(attachedDatabase, alias);
  }
}

class DriftDeviceData extends DataClass implements Insertable<DriftDeviceData> {
  final int id;
  final String participantID;
  final String sessionID;
  final String platform;
  final double height;
  final double width;
  final double aspectRatio;
  DriftDeviceData(
      {required this.id,
      required this.participantID,
      required this.sessionID,
      required this.platform,
      required this.height,
      required this.width,
      required this.aspectRatio});
  factory DriftDeviceData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DriftDeviceData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      participantID: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}participant_i_d'])!,
      sessionID: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}session_i_d'])!,
      platform: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}platform'])!,
      height: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}height'])!,
      width: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}width'])!,
      aspectRatio: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}aspect_ratio'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['participant_i_d'] = Variable<String>(participantID);
    map['session_i_d'] = Variable<String>(sessionID);
    map['platform'] = Variable<String>(platform);
    map['height'] = Variable<double>(height);
    map['width'] = Variable<double>(width);
    map['aspect_ratio'] = Variable<double>(aspectRatio);
    return map;
  }

  DriftDeviceCompanion toCompanion(bool nullToAbsent) {
    return DriftDeviceCompanion(
      id: Value(id),
      participantID: Value(participantID),
      sessionID: Value(sessionID),
      platform: Value(platform),
      height: Value(height),
      width: Value(width),
      aspectRatio: Value(aspectRatio),
    );
  }

  factory DriftDeviceData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftDeviceData(
      id: serializer.fromJson<int>(json['id']),
      participantID: serializer.fromJson<String>(json['participantID']),
      sessionID: serializer.fromJson<String>(json['sessionID']),
      platform: serializer.fromJson<String>(json['platform']),
      height: serializer.fromJson<double>(json['height']),
      width: serializer.fromJson<double>(json['width']),
      aspectRatio: serializer.fromJson<double>(json['aspectRatio']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'participantID': serializer.toJson<String>(participantID),
      'sessionID': serializer.toJson<String>(sessionID),
      'platform': serializer.toJson<String>(platform),
      'height': serializer.toJson<double>(height),
      'width': serializer.toJson<double>(width),
      'aspectRatio': serializer.toJson<double>(aspectRatio),
    };
  }

  DriftDeviceData copyWith(
          {int? id,
          String? participantID,
          String? sessionID,
          String? platform,
          double? height,
          double? width,
          double? aspectRatio}) =>
      DriftDeviceData(
        id: id ?? this.id,
        participantID: participantID ?? this.participantID,
        sessionID: sessionID ?? this.sessionID,
        platform: platform ?? this.platform,
        height: height ?? this.height,
        width: width ?? this.width,
        aspectRatio: aspectRatio ?? this.aspectRatio,
      );
  @override
  String toString() {
    return (StringBuffer('DriftDeviceData(')
          ..write('id: $id, ')
          ..write('participantID: $participantID, ')
          ..write('sessionID: $sessionID, ')
          ..write('platform: $platform, ')
          ..write('height: $height, ')
          ..write('width: $width, ')
          ..write('aspectRatio: $aspectRatio')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, participantID, sessionID, platform, height, width, aspectRatio);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftDeviceData &&
          other.id == this.id &&
          other.participantID == this.participantID &&
          other.sessionID == this.sessionID &&
          other.platform == this.platform &&
          other.height == this.height &&
          other.width == this.width &&
          other.aspectRatio == this.aspectRatio);
}

class DriftDeviceCompanion extends UpdateCompanion<DriftDeviceData> {
  final Value<int> id;
  final Value<String> participantID;
  final Value<String> sessionID;
  final Value<String> platform;
  final Value<double> height;
  final Value<double> width;
  final Value<double> aspectRatio;
  const DriftDeviceCompanion({
    this.id = const Value.absent(),
    this.participantID = const Value.absent(),
    this.sessionID = const Value.absent(),
    this.platform = const Value.absent(),
    this.height = const Value.absent(),
    this.width = const Value.absent(),
    this.aspectRatio = const Value.absent(),
  });
  DriftDeviceCompanion.insert({
    this.id = const Value.absent(),
    required String participantID,
    required String sessionID,
    required String platform,
    required double height,
    required double width,
    required double aspectRatio,
  })  : participantID = Value(participantID),
        sessionID = Value(sessionID),
        platform = Value(platform),
        height = Value(height),
        width = Value(width),
        aspectRatio = Value(aspectRatio);
  static Insertable<DriftDeviceData> custom({
    Expression<int>? id,
    Expression<String>? participantID,
    Expression<String>? sessionID,
    Expression<String>? platform,
    Expression<double>? height,
    Expression<double>? width,
    Expression<double>? aspectRatio,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (participantID != null) 'participant_i_d': participantID,
      if (sessionID != null) 'session_i_d': sessionID,
      if (platform != null) 'platform': platform,
      if (height != null) 'height': height,
      if (width != null) 'width': width,
      if (aspectRatio != null) 'aspect_ratio': aspectRatio,
    });
  }

  DriftDeviceCompanion copyWith(
      {Value<int>? id,
      Value<String>? participantID,
      Value<String>? sessionID,
      Value<String>? platform,
      Value<double>? height,
      Value<double>? width,
      Value<double>? aspectRatio}) {
    return DriftDeviceCompanion(
      id: id ?? this.id,
      participantID: participantID ?? this.participantID,
      sessionID: sessionID ?? this.sessionID,
      platform: platform ?? this.platform,
      height: height ?? this.height,
      width: width ?? this.width,
      aspectRatio: aspectRatio ?? this.aspectRatio,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (participantID.present) {
      map['participant_i_d'] = Variable<String>(participantID.value);
    }
    if (sessionID.present) {
      map['session_i_d'] = Variable<String>(sessionID.value);
    }
    if (platform.present) {
      map['platform'] = Variable<String>(platform.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (width.present) {
      map['width'] = Variable<double>(width.value);
    }
    if (aspectRatio.present) {
      map['aspect_ratio'] = Variable<double>(aspectRatio.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftDeviceCompanion(')
          ..write('id: $id, ')
          ..write('participantID: $participantID, ')
          ..write('sessionID: $sessionID, ')
          ..write('platform: $platform, ')
          ..write('height: $height, ')
          ..write('width: $width, ')
          ..write('aspectRatio: $aspectRatio')
          ..write(')'))
        .toString();
  }
}

class $DriftDeviceTable extends DriftDevice
    with TableInfo<$DriftDeviceTable, DriftDeviceData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftDeviceTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _participantIDMeta =
      const VerificationMeta('participantID');
  @override
  late final GeneratedColumn<String?> participantID = GeneratedColumn<String?>(
      'participant_i_d', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints:
          'REFERENCES drift_session_metadata (participant_i_d)');
  final VerificationMeta _sessionIDMeta = const VerificationMeta('sessionID');
  @override
  late final GeneratedColumn<String?> sessionID = GeneratedColumn<String?>(
      'session_i_d', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES drift_session_metadata (session_i_d)');
  final VerificationMeta _platformMeta = const VerificationMeta('platform');
  @override
  late final GeneratedColumn<String?> platform = GeneratedColumn<String?>(
      'platform', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double?> height = GeneratedColumn<double?>(
      'height', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<double?> width = GeneratedColumn<double?>(
      'width', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _aspectRatioMeta =
      const VerificationMeta('aspectRatio');
  @override
  late final GeneratedColumn<double?> aspectRatio = GeneratedColumn<double?>(
      'aspect_ratio', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, participantID, sessionID, platform, height, width, aspectRatio];
  @override
  String get aliasedName => _alias ?? 'drift_device';
  @override
  String get actualTableName => 'drift_device';
  @override
  VerificationContext validateIntegrity(Insertable<DriftDeviceData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('participant_i_d')) {
      context.handle(
          _participantIDMeta,
          participantID.isAcceptableOrUnknown(
              data['participant_i_d']!, _participantIDMeta));
    } else if (isInserting) {
      context.missing(_participantIDMeta);
    }
    if (data.containsKey('session_i_d')) {
      context.handle(
          _sessionIDMeta,
          sessionID.isAcceptableOrUnknown(
              data['session_i_d']!, _sessionIDMeta));
    } else if (isInserting) {
      context.missing(_sessionIDMeta);
    }
    if (data.containsKey('platform')) {
      context.handle(_platformMeta,
          platform.isAcceptableOrUnknown(data['platform']!, _platformMeta));
    } else if (isInserting) {
      context.missing(_platformMeta);
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    } else if (isInserting) {
      context.missing(_widthMeta);
    }
    if (data.containsKey('aspect_ratio')) {
      context.handle(
          _aspectRatioMeta,
          aspectRatio.isAcceptableOrUnknown(
              data['aspect_ratio']!, _aspectRatioMeta));
    } else if (isInserting) {
      context.missing(_aspectRatioMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftDeviceData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DriftDeviceData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DriftDeviceTable createAlias(String alias) {
    return $DriftDeviceTable(attachedDatabase, alias);
  }
}

class DriftTrialData extends DataClass implements Insertable<DriftTrialData> {
  final int id;
  final String participantID;
  final String sessionID;

  /// [trialType] specifies the type of trial (practice or experimental)
  final String trialType;
  final String stim;
  final String resp;
  DriftTrialData(
      {required this.id,
      required this.participantID,
      required this.sessionID,
      required this.trialType,
      required this.stim,
      required this.resp});
  factory DriftTrialData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DriftTrialData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      participantID: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}participant_i_d'])!,
      sessionID: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}session_i_d'])!,
      trialType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}trial_type'])!,
      stim: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}stim'])!,
      resp: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}resp'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['participant_i_d'] = Variable<String>(participantID);
    map['session_i_d'] = Variable<String>(sessionID);
    map['trial_type'] = Variable<String>(trialType);
    map['stim'] = Variable<String>(stim);
    map['resp'] = Variable<String>(resp);
    return map;
  }

  DriftTrialCompanion toCompanion(bool nullToAbsent) {
    return DriftTrialCompanion(
      id: Value(id),
      participantID: Value(participantID),
      sessionID: Value(sessionID),
      trialType: Value(trialType),
      stim: Value(stim),
      resp: Value(resp),
    );
  }

  factory DriftTrialData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftTrialData(
      id: serializer.fromJson<int>(json['id']),
      participantID: serializer.fromJson<String>(json['participantID']),
      sessionID: serializer.fromJson<String>(json['sessionID']),
      trialType: serializer.fromJson<String>(json['trialType']),
      stim: serializer.fromJson<String>(json['stim']),
      resp: serializer.fromJson<String>(json['resp']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'participantID': serializer.toJson<String>(participantID),
      'sessionID': serializer.toJson<String>(sessionID),
      'trialType': serializer.toJson<String>(trialType),
      'stim': serializer.toJson<String>(stim),
      'resp': serializer.toJson<String>(resp),
    };
  }

  DriftTrialData copyWith(
          {int? id,
          String? participantID,
          String? sessionID,
          String? trialType,
          String? stim,
          String? resp}) =>
      DriftTrialData(
        id: id ?? this.id,
        participantID: participantID ?? this.participantID,
        sessionID: sessionID ?? this.sessionID,
        trialType: trialType ?? this.trialType,
        stim: stim ?? this.stim,
        resp: resp ?? this.resp,
      );
  @override
  String toString() {
    return (StringBuffer('DriftTrialData(')
          ..write('id: $id, ')
          ..write('participantID: $participantID, ')
          ..write('sessionID: $sessionID, ')
          ..write('trialType: $trialType, ')
          ..write('stim: $stim, ')
          ..write('resp: $resp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, participantID, sessionID, trialType, stim, resp);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftTrialData &&
          other.id == this.id &&
          other.participantID == this.participantID &&
          other.sessionID == this.sessionID &&
          other.trialType == this.trialType &&
          other.stim == this.stim &&
          other.resp == this.resp);
}

class DriftTrialCompanion extends UpdateCompanion<DriftTrialData> {
  final Value<int> id;
  final Value<String> participantID;
  final Value<String> sessionID;
  final Value<String> trialType;
  final Value<String> stim;
  final Value<String> resp;
  const DriftTrialCompanion({
    this.id = const Value.absent(),
    this.participantID = const Value.absent(),
    this.sessionID = const Value.absent(),
    this.trialType = const Value.absent(),
    this.stim = const Value.absent(),
    this.resp = const Value.absent(),
  });
  DriftTrialCompanion.insert({
    this.id = const Value.absent(),
    required String participantID,
    required String sessionID,
    required String trialType,
    required String stim,
    required String resp,
  })  : participantID = Value(participantID),
        sessionID = Value(sessionID),
        trialType = Value(trialType),
        stim = Value(stim),
        resp = Value(resp);
  static Insertable<DriftTrialData> custom({
    Expression<int>? id,
    Expression<String>? participantID,
    Expression<String>? sessionID,
    Expression<String>? trialType,
    Expression<String>? stim,
    Expression<String>? resp,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (participantID != null) 'participant_i_d': participantID,
      if (sessionID != null) 'session_i_d': sessionID,
      if (trialType != null) 'trial_type': trialType,
      if (stim != null) 'stim': stim,
      if (resp != null) 'resp': resp,
    });
  }

  DriftTrialCompanion copyWith(
      {Value<int>? id,
      Value<String>? participantID,
      Value<String>? sessionID,
      Value<String>? trialType,
      Value<String>? stim,
      Value<String>? resp}) {
    return DriftTrialCompanion(
      id: id ?? this.id,
      participantID: participantID ?? this.participantID,
      sessionID: sessionID ?? this.sessionID,
      trialType: trialType ?? this.trialType,
      stim: stim ?? this.stim,
      resp: resp ?? this.resp,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (participantID.present) {
      map['participant_i_d'] = Variable<String>(participantID.value);
    }
    if (sessionID.present) {
      map['session_i_d'] = Variable<String>(sessionID.value);
    }
    if (trialType.present) {
      map['trial_type'] = Variable<String>(trialType.value);
    }
    if (stim.present) {
      map['stim'] = Variable<String>(stim.value);
    }
    if (resp.present) {
      map['resp'] = Variable<String>(resp.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftTrialCompanion(')
          ..write('id: $id, ')
          ..write('participantID: $participantID, ')
          ..write('sessionID: $sessionID, ')
          ..write('trialType: $trialType, ')
          ..write('stim: $stim, ')
          ..write('resp: $resp')
          ..write(')'))
        .toString();
  }
}

class $DriftTrialTable extends DriftTrial
    with TableInfo<$DriftTrialTable, DriftTrialData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftTrialTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _participantIDMeta =
      const VerificationMeta('participantID');
  @override
  late final GeneratedColumn<String?> participantID = GeneratedColumn<String?>(
      'participant_i_d', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints:
          'REFERENCES drift_session_metadata (participant_i_d)');
  final VerificationMeta _sessionIDMeta = const VerificationMeta('sessionID');
  @override
  late final GeneratedColumn<String?> sessionID = GeneratedColumn<String?>(
      'session_i_d', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES drift_session_metadata (session_i_d)');
  final VerificationMeta _trialTypeMeta = const VerificationMeta('trialType');
  @override
  late final GeneratedColumn<String?> trialType = GeneratedColumn<String?>(
      'trial_type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _stimMeta = const VerificationMeta('stim');
  @override
  late final GeneratedColumn<String?> stim = GeneratedColumn<String?>(
      'stim', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _respMeta = const VerificationMeta('resp');
  @override
  late final GeneratedColumn<String?> resp = GeneratedColumn<String?>(
      'resp', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, participantID, sessionID, trialType, stim, resp];
  @override
  String get aliasedName => _alias ?? 'drift_trial';
  @override
  String get actualTableName => 'drift_trial';
  @override
  VerificationContext validateIntegrity(Insertable<DriftTrialData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('participant_i_d')) {
      context.handle(
          _participantIDMeta,
          participantID.isAcceptableOrUnknown(
              data['participant_i_d']!, _participantIDMeta));
    } else if (isInserting) {
      context.missing(_participantIDMeta);
    }
    if (data.containsKey('session_i_d')) {
      context.handle(
          _sessionIDMeta,
          sessionID.isAcceptableOrUnknown(
              data['session_i_d']!, _sessionIDMeta));
    } else if (isInserting) {
      context.missing(_sessionIDMeta);
    }
    if (data.containsKey('trial_type')) {
      context.handle(_trialTypeMeta,
          trialType.isAcceptableOrUnknown(data['trial_type']!, _trialTypeMeta));
    } else if (isInserting) {
      context.missing(_trialTypeMeta);
    }
    if (data.containsKey('stim')) {
      context.handle(
          _stimMeta, stim.isAcceptableOrUnknown(data['stim']!, _stimMeta));
    } else if (isInserting) {
      context.missing(_stimMeta);
    }
    if (data.containsKey('resp')) {
      context.handle(
          _respMeta, resp.isAcceptableOrUnknown(data['resp']!, _respMeta));
    } else if (isInserting) {
      context.missing(_respMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftTrialData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DriftTrialData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DriftTrialTable createAlias(String alias) {
    return $DriftTrialTable(attachedDatabase, alias);
  }
}

abstract class _$DriftDB extends GeneratedDatabase {
  _$DriftDB(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $DriftSessionMetadataTable driftSessionMetadata =
      $DriftSessionMetadataTable(this);
  late final $DriftDeviceTable driftDevice = $DriftDeviceTable(this);
  late final $DriftTrialTable driftTrial = $DriftTrialTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [driftSessionMetadata, driftDevice, driftTrial];
}
