import 'package:cognitive_data/databases/drift_db/models/device.dart';
import 'package:cognitive_data/databases/drift_db/models/session.dart';
import 'package:cognitive_data/databases/drift_db/models/trial.dart';
import 'package:cognitive_data/models/trial.dart';
import 'package:cognitive_data/models/session.dart';
import 'package:cognitive_data/models/device.dart';
import 'package:drift/drift.dart';

import '../../models/db_base.dart';

part 'drift_db.g.dart';

@DriftDatabase(tables: [DriftSessionMetadata, DriftDevice, DriftTrial])
class DriftDB extends _$DriftDB implements DB {
  DriftDB(QueryExecutor dbConnection) : super(dbConnection);

  @override
  int get schemaVersion => 1;

  /// Adds the data from a single device object to the drift.
  /// Requires a base [Device] object as param.
  @override
  Future<int> addDevice({required Device device}) async {
    final DriftDeviceCompanion deviceCompanion = DriftDevice.fromDevice(device);
    final int id = await into(driftDevice).insert(deviceCompanion);
    return id;
  }

  @override
  void addSessionMetadata({required SessionMetadata session}) {
    // TODO: implement addSessionMetadata
  }

  /// Adds a single trial to the drift db from a base [Trial] object.
  @override
  Future<int> addTrial({required Trial trial}) async {
    final DriftTrialCompanion trialCompanion = DriftTrial.fromTrial(trial);
    final int id = await into(driftTrial).insert(trialCompanion);
    return id;
  }
}
