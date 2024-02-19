import 'dart:io';

import 'package:cognitive_data/databases/drift_db/models/device.dart';
import 'package:cognitive_data/databases/drift_db/models/session.dart';
import 'package:cognitive_data/databases/drift_db/models/trial.dart';
import 'package:cognitive_data/models/trial.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:cognitive_data/models/device.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';

import '../../models/db_base.dart';

part 'drift_db.g.dart';

@DriftDatabase(tables: [DriftSessionMetadata, DriftDevices, DriftTrials])
class DriftDB extends _$DriftDB implements DB {
  DriftDB(QueryExecutor dbConnection) : super(dbConnection);

  @override
  int get schemaVersion => 1;

  /// Initialize a [DriftDB] in the provided [path] and return it.
  /// This static method is meant to be used as a constructor to make it
  /// easier for users to init a [DriftDB]. Instantiate the [DriftDB] directly
  /// if you need more flexibility.
  static DriftDB init({required String path}) {
    final file = File(path);

    LazyDatabase nativeDB = LazyDatabase(() async {
      return NativeDatabase(file);
    });

    final DriftDB db = DriftDB(nativeDB);
    return db;
  }

  /// Adds the data from a single device object to the drift.
  /// Requires a base [Device] object as param.
  @override
  Future<int> addDevice({required Device device}) async {
    final DriftDevicesCompanion deviceCompanion =
        DriftDevices.fromDevice(device);
    final int id = await into(driftDevices).insert(deviceCompanion);
    return id;
  }

  /// Adds the metadata from a single Session object to the drift db.
  /// Requires a base [SessionMetadata] object as param.
  @override
  Future<int> addSessionMetadata({required SessionMetadata session}) async {
    final DriftSessionMetadataCompanion sessionMetadataCompanion =
        DriftSessionMetadata.fromSessionMetadata(session);
    final int id =
        await into(driftSessionMetadata).insert(sessionMetadataCompanion);

    return id;
  }

  /// Adds a single trial to the drift db from a base [Trial] object.
  @override
  Future<int> addTrial({required Trial trial}) async {
    final DriftTrialsCompanion trialCompanion = DriftTrials.fromTrial(trial);
    final int id = await into(driftTrials).insert(trialCompanion);
    return id;
  }
}
