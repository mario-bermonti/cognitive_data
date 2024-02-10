import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final DriftDB db;

  setUp(() {
    db = DriftDB(NativeDatabase.memory());
  });

  tearDown(() async {
    await db.close();
  });
}
