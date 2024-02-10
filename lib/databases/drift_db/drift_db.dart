import 'package:cognitive_data/databases/drift_db/models/device.dart';
import 'package:cognitive_data/databases/drift_db/models/session.dart';
import 'package:drift/drift.dart';

part 'drift_db.g.dart';

@DriftDatabase(tables: [DriftSessionMetadata, DriftDevice])
class DriftDB extends _$DriftDB {
  DriftDB(QueryExecutor dbConnection) : super(dbConnection);

  @override
  int get schemaVersion => 1;
}
