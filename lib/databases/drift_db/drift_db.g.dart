// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class SessionMetadataData extends DataClass
    implements Insertable<SessionMetadataData> {
  final int id;
  final String participantID;
  final String sessionID;
  final DateTime startTime;
  final DateTime endTime;
  SessionMetadataData(
      {required this.id,
      required this.participantID,
      required this.sessionID,
      required this.startTime,
      required this.endTime});
  factory SessionMetadataData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SessionMetadataData(
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

  SessionMetadataCompanion toCompanion(bool nullToAbsent) {
    return SessionMetadataCompanion(
      id: Value(id),
      participantID: Value(participantID),
      sessionID: Value(sessionID),
      startTime: Value(startTime),
      endTime: Value(endTime),
    );
  }

  factory SessionMetadataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SessionMetadataData(
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

  SessionMetadataData copyWith(
          {int? id,
          String? participantID,
          String? sessionID,
          DateTime? startTime,
          DateTime? endTime}) =>
      SessionMetadataData(
        id: id ?? this.id,
        participantID: participantID ?? this.participantID,
        sessionID: sessionID ?? this.sessionID,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
      );
  @override
  String toString() {
    return (StringBuffer('SessionMetadataData(')
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
      (other is SessionMetadataData &&
          other.id == this.id &&
          other.participantID == this.participantID &&
          other.sessionID == this.sessionID &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime);
}

class SessionMetadataCompanion extends UpdateCompanion<SessionMetadataData> {
  final Value<int> id;
  final Value<String> participantID;
  final Value<String> sessionID;
  final Value<DateTime> startTime;
  final Value<DateTime> endTime;
  const SessionMetadataCompanion({
    this.id = const Value.absent(),
    this.participantID = const Value.absent(),
    this.sessionID = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
  });
  SessionMetadataCompanion.insert({
    this.id = const Value.absent(),
    required String participantID,
    required String sessionID,
    required DateTime startTime,
    required DateTime endTime,
  })  : participantID = Value(participantID),
        sessionID = Value(sessionID),
        startTime = Value(startTime),
        endTime = Value(endTime);
  static Insertable<SessionMetadataData> custom({
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

  SessionMetadataCompanion copyWith(
      {Value<int>? id,
      Value<String>? participantID,
      Value<String>? sessionID,
      Value<DateTime>? startTime,
      Value<DateTime>? endTime}) {
    return SessionMetadataCompanion(
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
    return (StringBuffer('SessionMetadataCompanion(')
          ..write('id: $id, ')
          ..write('participantID: $participantID, ')
          ..write('sessionID: $sessionID, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime')
          ..write(')'))
        .toString();
  }
}

class $SessionMetadataTable extends SessionMetadata
    with TableInfo<$SessionMetadataTable, SessionMetadataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SessionMetadataTable(this.attachedDatabase, [this._alias]);
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
  String get aliasedName => _alias ?? 'session_metadata';
  @override
  String get actualTableName => 'session_metadata';
  @override
  VerificationContext validateIntegrity(
      Insertable<SessionMetadataData> instance,
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
  SessionMetadataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SessionMetadataData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SessionMetadataTable createAlias(String alias) {
    return $SessionMetadataTable(attachedDatabase, alias);
  }
}

abstract class _$DriftDB extends GeneratedDatabase {
  _$DriftDB(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $SessionMetadataTable sessionMetadata =
      $SessionMetadataTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [sessionMetadata];
}
