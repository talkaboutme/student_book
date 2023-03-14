import 'package:drift/drift.dart';

class StudentInfo extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get studentId => text().named('student_id')();
  TextColumn get userName => text().named('user_name')();
}
