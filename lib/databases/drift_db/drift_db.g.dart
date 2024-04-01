// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_db.dart';

// ignore_for_file: type=lint
class $DriftSessionsTable extends DriftSessions
    with TableInfo<$DriftSessionsTable, DriftSession> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftSessionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _participantIDMeta =
      const VerificationMeta('participantID');
  @override
  late final GeneratedColumn<String> participantID = GeneratedColumn<String>(
      'participant_i_d', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sessionIDMeta =
      const VerificationMeta('sessionID');
  @override
  late final GeneratedColumn<String> sessionID = GeneratedColumn<String>(
      'session_i_d', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _startTimeMeta =
      const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<DateTime> startTime = GeneratedColumn<DateTime>(
      'start_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _endTimeMeta =
      const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<DateTime> endTime = GeneratedColumn<DateTime>(
      'end_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, participantID, sessionID, startTime, endTime];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drift_sessions';
  @override
  VerificationContext validateIntegrity(Insertable<DriftSession> instance,
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
  DriftSession map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftSession(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      participantID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}participant_i_d'])!,
      sessionID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}session_i_d'])!,
      startTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_time'])!,
      endTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_time'])!,
    );
  }

  @override
  $DriftSessionsTable createAlias(String alias) {
    return $DriftSessionsTable(attachedDatabase, alias);
  }
}

class DriftSession extends DataClass implements Insertable<DriftSession> {
  final int id;
  final String participantID;
  final String sessionID;
  final DateTime startTime;
  final DateTime endTime;
  const DriftSession(
      {required this.id,
      required this.participantID,
      required this.sessionID,
      required this.startTime,
      required this.endTime});
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

  DriftSessionsCompanion toCompanion(bool nullToAbsent) {
    return DriftSessionsCompanion(
      id: Value(id),
      participantID: Value(participantID),
      sessionID: Value(sessionID),
      startTime: Value(startTime),
      endTime: Value(endTime),
    );
  }

  factory DriftSession.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftSession(
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

  DriftSession copyWith(
          {int? id,
          String? participantID,
          String? sessionID,
          DateTime? startTime,
          DateTime? endTime}) =>
      DriftSession(
        id: id ?? this.id,
        participantID: participantID ?? this.participantID,
        sessionID: sessionID ?? this.sessionID,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
      );
  @override
  String toString() {
    return (StringBuffer('DriftSession(')
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
      (other is DriftSession &&
          other.id == this.id &&
          other.participantID == this.participantID &&
          other.sessionID == this.sessionID &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime);
}

class DriftSessionsCompanion extends UpdateCompanion<DriftSession> {
  final Value<int> id;
  final Value<String> participantID;
  final Value<String> sessionID;
  final Value<DateTime> startTime;
  final Value<DateTime> endTime;
  const DriftSessionsCompanion({
    this.id = const Value.absent(),
    this.participantID = const Value.absent(),
    this.sessionID = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
  });
  DriftSessionsCompanion.insert({
    this.id = const Value.absent(),
    required String participantID,
    required String sessionID,
    required DateTime startTime,
    required DateTime endTime,
  })  : participantID = Value(participantID),
        sessionID = Value(sessionID),
        startTime = Value(startTime),
        endTime = Value(endTime);
  static Insertable<DriftSession> custom({
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

  DriftSessionsCompanion copyWith(
      {Value<int>? id,
      Value<String>? participantID,
      Value<String>? sessionID,
      Value<DateTime>? startTime,
      Value<DateTime>? endTime}) {
    return DriftSessionsCompanion(
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
    return (StringBuffer('DriftSessionsCompanion(')
          ..write('id: $id, ')
          ..write('participantID: $participantID, ')
          ..write('sessionID: $sessionID, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime')
          ..write(')'))
        .toString();
  }
}

class $DriftDevicesTable extends DriftDevices
    with TableInfo<$DriftDevicesTable, DriftDevice> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftDevicesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _participantIDMeta =
      const VerificationMeta('participantID');
  @override
  late final GeneratedColumn<String> participantID = GeneratedColumn<String>(
      'participant_i_d', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES drift_sessions (participant_i_d)'));
  static const VerificationMeta _sessionIDMeta =
      const VerificationMeta('sessionID');
  @override
  late final GeneratedColumn<String> sessionID = GeneratedColumn<String>(
      'session_i_d', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES drift_sessions (session_i_d)'));
  static const VerificationMeta _platformMeta =
      const VerificationMeta('platform');
  @override
  late final GeneratedColumn<String> platform = GeneratedColumn<String>(
      'platform', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
      'height', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<double> width = GeneratedColumn<double>(
      'width', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _aspectRatioMeta =
      const VerificationMeta('aspectRatio');
  @override
  late final GeneratedColumn<double> aspectRatio = GeneratedColumn<double>(
      'aspect_ratio', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, participantID, sessionID, platform, height, width, aspectRatio];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drift_devices';
  @override
  VerificationContext validateIntegrity(Insertable<DriftDevice> instance,
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
  DriftDevice map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftDevice(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      participantID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}participant_i_d'])!,
      sessionID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}session_i_d'])!,
      platform: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}platform'])!,
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}height'])!,
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}width'])!,
      aspectRatio: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}aspect_ratio'])!,
    );
  }

  @override
  $DriftDevicesTable createAlias(String alias) {
    return $DriftDevicesTable(attachedDatabase, alias);
  }
}

class DriftDevice extends DataClass implements Insertable<DriftDevice> {
  final int id;
  final String participantID;
  final String sessionID;
  final String platform;
  final double height;
  final double width;
  final double aspectRatio;
  const DriftDevice(
      {required this.id,
      required this.participantID,
      required this.sessionID,
      required this.platform,
      required this.height,
      required this.width,
      required this.aspectRatio});
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

  DriftDevicesCompanion toCompanion(bool nullToAbsent) {
    return DriftDevicesCompanion(
      id: Value(id),
      participantID: Value(participantID),
      sessionID: Value(sessionID),
      platform: Value(platform),
      height: Value(height),
      width: Value(width),
      aspectRatio: Value(aspectRatio),
    );
  }

  factory DriftDevice.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftDevice(
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

  DriftDevice copyWith(
          {int? id,
          String? participantID,
          String? sessionID,
          String? platform,
          double? height,
          double? width,
          double? aspectRatio}) =>
      DriftDevice(
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
    return (StringBuffer('DriftDevice(')
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
      (other is DriftDevice &&
          other.id == this.id &&
          other.participantID == this.participantID &&
          other.sessionID == this.sessionID &&
          other.platform == this.platform &&
          other.height == this.height &&
          other.width == this.width &&
          other.aspectRatio == this.aspectRatio);
}

class DriftDevicesCompanion extends UpdateCompanion<DriftDevice> {
  final Value<int> id;
  final Value<String> participantID;
  final Value<String> sessionID;
  final Value<String> platform;
  final Value<double> height;
  final Value<double> width;
  final Value<double> aspectRatio;
  const DriftDevicesCompanion({
    this.id = const Value.absent(),
    this.participantID = const Value.absent(),
    this.sessionID = const Value.absent(),
    this.platform = const Value.absent(),
    this.height = const Value.absent(),
    this.width = const Value.absent(),
    this.aspectRatio = const Value.absent(),
  });
  DriftDevicesCompanion.insert({
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
  static Insertable<DriftDevice> custom({
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

  DriftDevicesCompanion copyWith(
      {Value<int>? id,
      Value<String>? participantID,
      Value<String>? sessionID,
      Value<String>? platform,
      Value<double>? height,
      Value<double>? width,
      Value<double>? aspectRatio}) {
    return DriftDevicesCompanion(
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
    return (StringBuffer('DriftDevicesCompanion(')
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

class $DriftTrialsTable extends DriftTrials
    with TableInfo<$DriftTrialsTable, DriftTrial> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftTrialsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _participantIDMeta =
      const VerificationMeta('participantID');
  @override
  late final GeneratedColumn<String> participantID = GeneratedColumn<String>(
      'participant_i_d', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES drift_sessions (participant_i_d)'));
  static const VerificationMeta _sessionIDMeta =
      const VerificationMeta('sessionID');
  @override
  late final GeneratedColumn<String> sessionID = GeneratedColumn<String>(
      'session_i_d', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES drift_sessions (session_i_d)'));
  static const VerificationMeta _trialTypeMeta =
      const VerificationMeta('trialType');
  @override
  late final GeneratedColumn<String> trialType = GeneratedColumn<String>(
      'trial_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _stimMeta = const VerificationMeta('stim');
  @override
  late final GeneratedColumn<String> stim = GeneratedColumn<String>(
      'stim', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _responseMeta =
      const VerificationMeta('response');
  @override
  late final GeneratedColumn<String> response = GeneratedColumn<String>(
      'response', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, participantID, sessionID, trialType, stim, response];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drift_trials';
  @override
  VerificationContext validateIntegrity(Insertable<DriftTrial> instance,
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
    if (data.containsKey('response')) {
      context.handle(_responseMeta,
          response.isAcceptableOrUnknown(data['response']!, _responseMeta));
    } else if (isInserting) {
      context.missing(_responseMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftTrial map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftTrial(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      participantID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}participant_i_d'])!,
      sessionID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}session_i_d'])!,
      trialType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}trial_type'])!,
      stim: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}stim'])!,
      response: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}response'])!,
    );
  }

  @override
  $DriftTrialsTable createAlias(String alias) {
    return $DriftTrialsTable(attachedDatabase, alias);
  }
}

class DriftTrial extends DataClass implements Insertable<DriftTrial> {
  final int id;
  final String participantID;
  final String sessionID;

  /// [trialType] specifies the type of trial (practice or experimental)
  final String trialType;
  final String stim;
  final String response;
  const DriftTrial(
      {required this.id,
      required this.participantID,
      required this.sessionID,
      required this.trialType,
      required this.stim,
      required this.response});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['participant_i_d'] = Variable<String>(participantID);
    map['session_i_d'] = Variable<String>(sessionID);
    map['trial_type'] = Variable<String>(trialType);
    map['stim'] = Variable<String>(stim);
    map['response'] = Variable<String>(response);
    return map;
  }

  DriftTrialsCompanion toCompanion(bool nullToAbsent) {
    return DriftTrialsCompanion(
      id: Value(id),
      participantID: Value(participantID),
      sessionID: Value(sessionID),
      trialType: Value(trialType),
      stim: Value(stim),
      response: Value(response),
    );
  }

  factory DriftTrial.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftTrial(
      id: serializer.fromJson<int>(json['id']),
      participantID: serializer.fromJson<String>(json['participantID']),
      sessionID: serializer.fromJson<String>(json['sessionID']),
      trialType: serializer.fromJson<String>(json['trialType']),
      stim: serializer.fromJson<String>(json['stim']),
      response: serializer.fromJson<String>(json['response']),
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
      'response': serializer.toJson<String>(response),
    };
  }

  DriftTrial copyWith(
          {int? id,
          String? participantID,
          String? sessionID,
          String? trialType,
          String? stim,
          String? response}) =>
      DriftTrial(
        id: id ?? this.id,
        participantID: participantID ?? this.participantID,
        sessionID: sessionID ?? this.sessionID,
        trialType: trialType ?? this.trialType,
        stim: stim ?? this.stim,
        response: response ?? this.response,
      );
  @override
  String toString() {
    return (StringBuffer('DriftTrial(')
          ..write('id: $id, ')
          ..write('participantID: $participantID, ')
          ..write('sessionID: $sessionID, ')
          ..write('trialType: $trialType, ')
          ..write('stim: $stim, ')
          ..write('response: $response')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, participantID, sessionID, trialType, stim, response);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftTrial &&
          other.id == this.id &&
          other.participantID == this.participantID &&
          other.sessionID == this.sessionID &&
          other.trialType == this.trialType &&
          other.stim == this.stim &&
          other.response == this.response);
}

class DriftTrialsCompanion extends UpdateCompanion<DriftTrial> {
  final Value<int> id;
  final Value<String> participantID;
  final Value<String> sessionID;
  final Value<String> trialType;
  final Value<String> stim;
  final Value<String> response;
  const DriftTrialsCompanion({
    this.id = const Value.absent(),
    this.participantID = const Value.absent(),
    this.sessionID = const Value.absent(),
    this.trialType = const Value.absent(),
    this.stim = const Value.absent(),
    this.response = const Value.absent(),
  });
  DriftTrialsCompanion.insert({
    this.id = const Value.absent(),
    required String participantID,
    required String sessionID,
    required String trialType,
    required String stim,
    required String response,
  })  : participantID = Value(participantID),
        sessionID = Value(sessionID),
        trialType = Value(trialType),
        stim = Value(stim),
        response = Value(response);
  static Insertable<DriftTrial> custom({
    Expression<int>? id,
    Expression<String>? participantID,
    Expression<String>? sessionID,
    Expression<String>? trialType,
    Expression<String>? stim,
    Expression<String>? response,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (participantID != null) 'participant_i_d': participantID,
      if (sessionID != null) 'session_i_d': sessionID,
      if (trialType != null) 'trial_type': trialType,
      if (stim != null) 'stim': stim,
      if (response != null) 'response': response,
    });
  }

  DriftTrialsCompanion copyWith(
      {Value<int>? id,
      Value<String>? participantID,
      Value<String>? sessionID,
      Value<String>? trialType,
      Value<String>? stim,
      Value<String>? response}) {
    return DriftTrialsCompanion(
      id: id ?? this.id,
      participantID: participantID ?? this.participantID,
      sessionID: sessionID ?? this.sessionID,
      trialType: trialType ?? this.trialType,
      stim: stim ?? this.stim,
      response: response ?? this.response,
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
    if (response.present) {
      map['response'] = Variable<String>(response.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftTrialsCompanion(')
          ..write('id: $id, ')
          ..write('participantID: $participantID, ')
          ..write('sessionID: $sessionID, ')
          ..write('trialType: $trialType, ')
          ..write('stim: $stim, ')
          ..write('response: $response')
          ..write(')'))
        .toString();
  }
}

abstract class _$DriftDB extends GeneratedDatabase {
  _$DriftDB(QueryExecutor e) : super(e);
  late final $DriftSessionsTable driftSessions = $DriftSessionsTable(this);
  late final $DriftDevicesTable driftDevices = $DriftDevicesTable(this);
  late final $DriftTrialsTable driftTrials = $DriftTrialsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [driftSessions, driftDevices, driftTrials];
}
