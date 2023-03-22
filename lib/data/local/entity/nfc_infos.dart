import 'package:drift/drift.dart';

class NfcInfos extends Table {
  @override
  String get tableName => 'nfc_infos';
  IntColumn get id => integer().autoIncrement()();
  TextColumn get type => text()();
  TextColumn get data1 => text()();
  TextColumn get data2 => text()();
  TextColumn get dataValidYn => text()();
  DateTimeColumn get logDate => dateTime()();
}
