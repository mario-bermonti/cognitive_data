import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:cognitive_data/databases/drift_db/models/session.dart';
import 'package:drift/drift.dart';

import '../../../models/device.dart';

class DriftDevice extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get participantID =>
      text().references(DriftSessionMetadata, #participantID)();
  TextColumn get sessionID =>
      text().references(DriftSessionMetadata, #sessionID)();
  TextColumn get platform => text()();
  RealColumn get height => real()();
  RealColumn get width => real()();
  RealColumn get aspectRatio => real()();

  static DriftDeviceCompanion fromDevice(Device baseDevice) {
    final DriftDeviceCompanion driftDevice = DriftDeviceCompanion(
        participantID: Value(baseDevice.participantID),
        sessionID: Value(baseDevice.sessionID),
        platform: Value(baseDevice.platform),
        height: Value(baseDevice.height),
        width: Value(baseDevice.width),
        aspectRatio: Value(baseDevice.aspectRatio));
    return driftDevice;
  }
}
