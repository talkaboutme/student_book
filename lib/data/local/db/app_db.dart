import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../entity/nfc_infos.dart';
import '../entity/student_class_infos.dart';
import '../entity/student_infos.dart';
import '../entity/student_records.dart';
import '../entity/system_codes.dart';

part 'app_db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'srn_db_imported_2.sqlite'));

    if (!await file.exists()) {
      // Extract the pre-populated database file from assets
      final blob = await rootBundle.load('assets/srn_db_2.sqlite');
      final buffer = blob.buffer;
      await file.writeAsBytes(
          buffer.asUint8List(blob.offsetInBytes, blob.lengthInBytes));
    }

    return NativeDatabase.createInBackground(file);
  });
}

@DriftDatabase(tables: [
  StudentInfos,
  StudentClassInfos,
  NfcInfos,
  StudentRecords,
  SystemCodes,
])
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  // get the list of students
  Future<List<StudentInfo>> getStudents() async {
    return await select(studentInfos).get();
  }

  Future<StudentInfo> getStudent(int id) async {
    return await (select(studentInfos)..where((tbl) => tbl.id.equals(id)))
        .getSingle();
  }

  Future<bool> updateStudent(StudentInfosCompanion entity) async {
    return await update(studentInfos).replace(entity);
  }

  Future<int> insertStudent(StudentInfosCompanion entity) async {
    try {
      return await into(studentInfos).insert(entity);
    } on SqliteException {
      return -1;
    } catch (e) {
      print(e);
    }
    return -2;
  }

  Future<int> deleteStudent(int id) async {
    return await (delete(studentInfos)..where((tbl) => tbl.id.equals(id))).go();
  }

  // system Codes
  Future<List<SystemCode>> getSystemCode() async {
    return await select(systemCodes).get();
  }

  @override
  int get schemaVersion => 1;
}
