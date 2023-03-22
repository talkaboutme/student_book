import 'package:drift/drift.dart';

class StudentClassInfos extends Table {
  @override
  String get tableName => 'student_class_infos';
  IntColumn get id => integer().autoIncrement()();
  IntColumn get year => integer()();
  TextColumn get studentId => text()();
  TextColumn get classId => text()();
  TextColumn get validYn => text()();
  DateTimeColumn get logDate => dateTime()();
}
