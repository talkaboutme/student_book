import 'package:drift/drift.dart';

class StudentInfos extends Table {
  @override
  String get tableName => 'student_infos';
  IntColumn get id => integer().autoIncrement()();
  TextColumn get studentId => text().named('student_id')();
  TextColumn get name => text()();
  TextColumn get gender => text()();
}
