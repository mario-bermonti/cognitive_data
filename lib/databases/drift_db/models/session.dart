import 'package:drift/drift.dart';

class Sessions extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get sessionID => text()();
  TextColumn get participantID => text()();
  DateTimeColumn get startTime => dateTime()();
  DateTimeColumn get endTime => dateTime()();
}
