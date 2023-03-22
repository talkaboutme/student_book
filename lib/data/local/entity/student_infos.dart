import 'package:drift/drift.dart';

class StudentInfos extends Table {
  @override
  String get tableName => 'student_infos';
  IntColumn get id => integer().autoIncrement()();
  IntColumn get studentId => integer().unique()();
  TextColumn get name => text()();
  TextColumn get gender => text()();
}
