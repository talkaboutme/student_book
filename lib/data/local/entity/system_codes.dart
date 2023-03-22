import 'package:drift/drift.dart';

class SystemCodes extends Table {
  @override
  String get tableName => 'system_code';
  IntColumn get id => integer().autoIncrement()();
  TextColumn get type => text()();
  TextColumn get code => text()();
  TextColumn get codeName => text()();
}
