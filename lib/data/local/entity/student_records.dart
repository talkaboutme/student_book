import 'package:drift/drift.dart';

class StudentRecords extends Table {
  @override
  String get tableName => 'student_records';
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get runDate => dateTime()();
  TextColumn get studentId => text()();
  TextColumn get classId => text()();
  DateTimeColumn get startTagDt => dateTime()();
  DateTimeColumn get middleTagDt => dateTime()();
  TextColumn get middleLocId => text()();
  DateTimeColumn get finishTagDt => dateTime()();
  IntColumn get recordMs => integer()();
  TextColumn get statusCode => text()();
}
