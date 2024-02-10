import 'package:cognitive_data/databases/drift_db/drift_db.dart';
import 'package:cognitive_data/databases/drift_db/models/device.dart';
import 'package:cognitive_data/models/device.dart';
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

  test(
    "Correctly instantiate a DriftDevice object from a base Device model",
    () {
      TestWidgetsFlutterBinding.ensureInitialized();

      final Device baseDevice = Device(
        participantID: '101',
        sessionID: '001',
      );

      final DriftDeviceCompanion driftDevice =
          DriftDevice.fromDevice(baseDevice);

      expect(driftDevice.participantID.value, baseDevice.participantID);
      expect(driftDevice.sessionID.value, baseDevice.sessionID);
      expect(driftDevice.platform.value, baseDevice.platform);
      expect(driftDevice.height.value, baseDevice.height);
      expect(driftDevice.width.value, baseDevice.width);
      expect(driftDevice.aspectRatio.value, baseDevice.aspectRatio);
    },
  );
}
