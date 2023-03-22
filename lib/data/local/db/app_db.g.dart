// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $StudentInfosTable extends StudentInfos
    with TableInfo<$StudentInfosTable, StudentInfo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StudentInfosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _studentIdMeta =
      const VerificationMeta('studentId');
  @override
  late final GeneratedColumn<int> studentId = GeneratedColumn<int>(
      'student_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
      'gender', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, studentId, name, gender];
  @override
  String get aliasedName => _alias ?? 'student_infos';
  @override
  String get actualTableName => 'student_infos';
  @override
  VerificationContext validateIntegrity(Insertable<StudentInfo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('student_id')) {
      context.handle(_studentIdMeta,
          studentId.isAcceptableOrUnknown(data['student_id']!, _studentIdMeta));
    } else if (isInserting) {
      context.missing(_studentIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StudentInfo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StudentInfo(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      studentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}student_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      gender: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender'])!,
    );
  }

  @override
  $StudentInfosTable createAlias(String alias) {
    return $StudentInfosTable(attachedDatabase, alias);
  }
}

class StudentInfo extends DataClass implements Insertable<StudentInfo> {
  final int id;
  final int studentId;
  final String name;
  final String gender;
  const StudentInfo(
      {required this.id,
      required this.studentId,
      required this.name,
      required this.gender});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['student_id'] = Variable<int>(studentId);
    map['name'] = Variable<String>(name);
    map['gender'] = Variable<String>(gender);
    return map;
  }

  StudentInfosCompanion toCompanion(bool nullToAbsent) {
    return StudentInfosCompanion(
      id: Value(id),
      studentId: Value(studentId),
      name: Value(name),
      gender: Value(gender),
    );
  }

  factory StudentInfo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StudentInfo(
      id: serializer.fromJson<int>(json['id']),
      studentId: serializer.fromJson<int>(json['studentId']),
      name: serializer.fromJson<String>(json['name']),
      gender: serializer.fromJson<String>(json['gender']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'studentId': serializer.toJson<int>(studentId),
      'name': serializer.toJson<String>(name),
      'gender': serializer.toJson<String>(gender),
    };
  }

  StudentInfo copyWith(
          {int? id, int? studentId, String? name, String? gender}) =>
      StudentInfo(
        id: id ?? this.id,
        studentId: studentId ?? this.studentId,
        name: name ?? this.name,
        gender: gender ?? this.gender,
      );
  @override
  String toString() {
    return (StringBuffer('StudentInfo(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('name: $name, ')
          ..write('gender: $gender')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, studentId, name, gender);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StudentInfo &&
          other.id == this.id &&
          other.studentId == this.studentId &&
          other.name == this.name &&
          other.gender == this.gender);
}

class StudentInfosCompanion extends UpdateCompanion<StudentInfo> {
  final Value<int> id;
  final Value<int> studentId;
  final Value<String> name;
  final Value<String> gender;
  const StudentInfosCompanion({
    this.id = const Value.absent(),
    this.studentId = const Value.absent(),
    this.name = const Value.absent(),
    this.gender = const Value.absent(),
  });
  StudentInfosCompanion.insert({
    this.id = const Value.absent(),
    required int studentId,
    required String name,
    required String gender,
  })  : studentId = Value(studentId),
        name = Value(name),
        gender = Value(gender);
  static Insertable<StudentInfo> custom({
    Expression<int>? id,
    Expression<int>? studentId,
    Expression<String>? name,
    Expression<String>? gender,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (studentId != null) 'student_id': studentId,
      if (name != null) 'name': name,
      if (gender != null) 'gender': gender,
    });
  }

  StudentInfosCompanion copyWith(
      {Value<int>? id,
      Value<int>? studentId,
      Value<String>? name,
      Value<String>? gender}) {
    return StudentInfosCompanion(
      id: id ?? this.id,
      studentId: studentId ?? this.studentId,
      name: name ?? this.name,
      gender: gender ?? this.gender,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (studentId.present) {
      map['student_id'] = Variable<int>(studentId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudentInfosCompanion(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('name: $name, ')
          ..write('gender: $gender')
          ..write(')'))
        .toString();
  }
}

class $StudentClassInfosTable extends StudentClassInfos
    with TableInfo<$StudentClassInfosTable, StudentClassInfo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StudentClassInfosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
      'year', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _studentIdMeta =
      const VerificationMeta('studentId');
  @override
  late final GeneratedColumn<String> studentId = GeneratedColumn<String>(
      'student_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _classIdMeta =
      const VerificationMeta('classId');
  @override
  late final GeneratedColumn<String> classId = GeneratedColumn<String>(
      'class_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _validYnMeta =
      const VerificationMeta('validYn');
  @override
  late final GeneratedColumn<String> validYn = GeneratedColumn<String>(
      'valid_yn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _logDateMeta =
      const VerificationMeta('logDate');
  @override
  late final GeneratedColumn<DateTime> logDate = GeneratedColumn<DateTime>(
      'log_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, year, studentId, classId, validYn, logDate];
  @override
  String get aliasedName => _alias ?? 'student_class_infos';
  @override
  String get actualTableName => 'student_class_infos';
  @override
  VerificationContext validateIntegrity(Insertable<StudentClassInfo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('year')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['year']!, _yearMeta));
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (data.containsKey('student_id')) {
      context.handle(_studentIdMeta,
          studentId.isAcceptableOrUnknown(data['student_id']!, _studentIdMeta));
    } else if (isInserting) {
      context.missing(_studentIdMeta);
    }
    if (data.containsKey('class_id')) {
      context.handle(_classIdMeta,
          classId.isAcceptableOrUnknown(data['class_id']!, _classIdMeta));
    } else if (isInserting) {
      context.missing(_classIdMeta);
    }
    if (data.containsKey('valid_yn')) {
      context.handle(_validYnMeta,
          validYn.isAcceptableOrUnknown(data['valid_yn']!, _validYnMeta));
    } else if (isInserting) {
      context.missing(_validYnMeta);
    }
    if (data.containsKey('log_date')) {
      context.handle(_logDateMeta,
          logDate.isAcceptableOrUnknown(data['log_date']!, _logDateMeta));
    } else if (isInserting) {
      context.missing(_logDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StudentClassInfo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StudentClassInfo(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      year: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}year'])!,
      studentId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}student_id'])!,
      classId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}class_id'])!,
      validYn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}valid_yn'])!,
      logDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}log_date'])!,
    );
  }

  @override
  $StudentClassInfosTable createAlias(String alias) {
    return $StudentClassInfosTable(attachedDatabase, alias);
  }
}

class StudentClassInfo extends DataClass
    implements Insertable<StudentClassInfo> {
  final int id;
  final int year;
  final String studentId;
  final String classId;
  final String validYn;
  final DateTime logDate;
  const StudentClassInfo(
      {required this.id,
      required this.year,
      required this.studentId,
      required this.classId,
      required this.validYn,
      required this.logDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['year'] = Variable<int>(year);
    map['student_id'] = Variable<String>(studentId);
    map['class_id'] = Variable<String>(classId);
    map['valid_yn'] = Variable<String>(validYn);
    map['log_date'] = Variable<DateTime>(logDate);
    return map;
  }

  StudentClassInfosCompanion toCompanion(bool nullToAbsent) {
    return StudentClassInfosCompanion(
      id: Value(id),
      year: Value(year),
      studentId: Value(studentId),
      classId: Value(classId),
      validYn: Value(validYn),
      logDate: Value(logDate),
    );
  }

  factory StudentClassInfo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StudentClassInfo(
      id: serializer.fromJson<int>(json['id']),
      year: serializer.fromJson<int>(json['year']),
      studentId: serializer.fromJson<String>(json['studentId']),
      classId: serializer.fromJson<String>(json['classId']),
      validYn: serializer.fromJson<String>(json['validYn']),
      logDate: serializer.fromJson<DateTime>(json['logDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'year': serializer.toJson<int>(year),
      'studentId': serializer.toJson<String>(studentId),
      'classId': serializer.toJson<String>(classId),
      'validYn': serializer.toJson<String>(validYn),
      'logDate': serializer.toJson<DateTime>(logDate),
    };
  }

  StudentClassInfo copyWith(
          {int? id,
          int? year,
          String? studentId,
          String? classId,
          String? validYn,
          DateTime? logDate}) =>
      StudentClassInfo(
        id: id ?? this.id,
        year: year ?? this.year,
        studentId: studentId ?? this.studentId,
        classId: classId ?? this.classId,
        validYn: validYn ?? this.validYn,
        logDate: logDate ?? this.logDate,
      );
  @override
  String toString() {
    return (StringBuffer('StudentClassInfo(')
          ..write('id: $id, ')
          ..write('year: $year, ')
          ..write('studentId: $studentId, ')
          ..write('classId: $classId, ')
          ..write('validYn: $validYn, ')
          ..write('logDate: $logDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, year, studentId, classId, validYn, logDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StudentClassInfo &&
          other.id == this.id &&
          other.year == this.year &&
          other.studentId == this.studentId &&
          other.classId == this.classId &&
          other.validYn == this.validYn &&
          other.logDate == this.logDate);
}

class StudentClassInfosCompanion extends UpdateCompanion<StudentClassInfo> {
  final Value<int> id;
  final Value<int> year;
  final Value<String> studentId;
  final Value<String> classId;
  final Value<String> validYn;
  final Value<DateTime> logDate;
  const StudentClassInfosCompanion({
    this.id = const Value.absent(),
    this.year = const Value.absent(),
    this.studentId = const Value.absent(),
    this.classId = const Value.absent(),
    this.validYn = const Value.absent(),
    this.logDate = const Value.absent(),
  });
  StudentClassInfosCompanion.insert({
    this.id = const Value.absent(),
    required int year,
    required String studentId,
    required String classId,
    required String validYn,
    required DateTime logDate,
  })  : year = Value(year),
        studentId = Value(studentId),
        classId = Value(classId),
        validYn = Value(validYn),
        logDate = Value(logDate);
  static Insertable<StudentClassInfo> custom({
    Expression<int>? id,
    Expression<int>? year,
    Expression<String>? studentId,
    Expression<String>? classId,
    Expression<String>? validYn,
    Expression<DateTime>? logDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (year != null) 'year': year,
      if (studentId != null) 'student_id': studentId,
      if (classId != null) 'class_id': classId,
      if (validYn != null) 'valid_yn': validYn,
      if (logDate != null) 'log_date': logDate,
    });
  }

  StudentClassInfosCompanion copyWith(
      {Value<int>? id,
      Value<int>? year,
      Value<String>? studentId,
      Value<String>? classId,
      Value<String>? validYn,
      Value<DateTime>? logDate}) {
    return StudentClassInfosCompanion(
      id: id ?? this.id,
      year: year ?? this.year,
      studentId: studentId ?? this.studentId,
      classId: classId ?? this.classId,
      validYn: validYn ?? this.validYn,
      logDate: logDate ?? this.logDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (studentId.present) {
      map['student_id'] = Variable<String>(studentId.value);
    }
    if (classId.present) {
      map['class_id'] = Variable<String>(classId.value);
    }
    if (validYn.present) {
      map['valid_yn'] = Variable<String>(validYn.value);
    }
    if (logDate.present) {
      map['log_date'] = Variable<DateTime>(logDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudentClassInfosCompanion(')
          ..write('id: $id, ')
          ..write('year: $year, ')
          ..write('studentId: $studentId, ')
          ..write('classId: $classId, ')
          ..write('validYn: $validYn, ')
          ..write('logDate: $logDate')
          ..write(')'))
        .toString();
  }
}

class $NfcInfosTable extends NfcInfos with TableInfo<$NfcInfosTable, NfcInfo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NfcInfosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _data1Meta = const VerificationMeta('data1');
  @override
  late final GeneratedColumn<String> data1 = GeneratedColumn<String>(
      'data1', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _data2Meta = const VerificationMeta('data2');
  @override
  late final GeneratedColumn<String> data2 = GeneratedColumn<String>(
      'data2', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dataValidYnMeta =
      const VerificationMeta('dataValidYn');
  @override
  late final GeneratedColumn<String> dataValidYn = GeneratedColumn<String>(
      'data_valid_yn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _logDateMeta =
      const VerificationMeta('logDate');
  @override
  late final GeneratedColumn<DateTime> logDate = GeneratedColumn<DateTime>(
      'log_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, type, data1, data2, dataValidYn, logDate];
  @override
  String get aliasedName => _alias ?? 'nfc_infos';
  @override
  String get actualTableName => 'nfc_infos';
  @override
  VerificationContext validateIntegrity(Insertable<NfcInfo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('data1')) {
      context.handle(
          _data1Meta, data1.isAcceptableOrUnknown(data['data1']!, _data1Meta));
    } else if (isInserting) {
      context.missing(_data1Meta);
    }
    if (data.containsKey('data2')) {
      context.handle(
          _data2Meta, data2.isAcceptableOrUnknown(data['data2']!, _data2Meta));
    } else if (isInserting) {
      context.missing(_data2Meta);
    }
    if (data.containsKey('data_valid_yn')) {
      context.handle(
          _dataValidYnMeta,
          dataValidYn.isAcceptableOrUnknown(
              data['data_valid_yn']!, _dataValidYnMeta));
    } else if (isInserting) {
      context.missing(_dataValidYnMeta);
    }
    if (data.containsKey('log_date')) {
      context.handle(_logDateMeta,
          logDate.isAcceptableOrUnknown(data['log_date']!, _logDateMeta));
    } else if (isInserting) {
      context.missing(_logDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NfcInfo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NfcInfo(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      data1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}data1'])!,
      data2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}data2'])!,
      dataValidYn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}data_valid_yn'])!,
      logDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}log_date'])!,
    );
  }

  @override
  $NfcInfosTable createAlias(String alias) {
    return $NfcInfosTable(attachedDatabase, alias);
  }
}

class NfcInfo extends DataClass implements Insertable<NfcInfo> {
  final int id;
  final String type;
  final String data1;
  final String data2;
  final String dataValidYn;
  final DateTime logDate;
  const NfcInfo(
      {required this.id,
      required this.type,
      required this.data1,
      required this.data2,
      required this.dataValidYn,
      required this.logDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['type'] = Variable<String>(type);
    map['data1'] = Variable<String>(data1);
    map['data2'] = Variable<String>(data2);
    map['data_valid_yn'] = Variable<String>(dataValidYn);
    map['log_date'] = Variable<DateTime>(logDate);
    return map;
  }

  NfcInfosCompanion toCompanion(bool nullToAbsent) {
    return NfcInfosCompanion(
      id: Value(id),
      type: Value(type),
      data1: Value(data1),
      data2: Value(data2),
      dataValidYn: Value(dataValidYn),
      logDate: Value(logDate),
    );
  }

  factory NfcInfo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NfcInfo(
      id: serializer.fromJson<int>(json['id']),
      type: serializer.fromJson<String>(json['type']),
      data1: serializer.fromJson<String>(json['data1']),
      data2: serializer.fromJson<String>(json['data2']),
      dataValidYn: serializer.fromJson<String>(json['dataValidYn']),
      logDate: serializer.fromJson<DateTime>(json['logDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'type': serializer.toJson<String>(type),
      'data1': serializer.toJson<String>(data1),
      'data2': serializer.toJson<String>(data2),
      'dataValidYn': serializer.toJson<String>(dataValidYn),
      'logDate': serializer.toJson<DateTime>(logDate),
    };
  }

  NfcInfo copyWith(
          {int? id,
          String? type,
          String? data1,
          String? data2,
          String? dataValidYn,
          DateTime? logDate}) =>
      NfcInfo(
        id: id ?? this.id,
        type: type ?? this.type,
        data1: data1 ?? this.data1,
        data2: data2 ?? this.data2,
        dataValidYn: dataValidYn ?? this.dataValidYn,
        logDate: logDate ?? this.logDate,
      );
  @override
  String toString() {
    return (StringBuffer('NfcInfo(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('data1: $data1, ')
          ..write('data2: $data2, ')
          ..write('dataValidYn: $dataValidYn, ')
          ..write('logDate: $logDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type, data1, data2, dataValidYn, logDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NfcInfo &&
          other.id == this.id &&
          other.type == this.type &&
          other.data1 == this.data1 &&
          other.data2 == this.data2 &&
          other.dataValidYn == this.dataValidYn &&
          other.logDate == this.logDate);
}

class NfcInfosCompanion extends UpdateCompanion<NfcInfo> {
  final Value<int> id;
  final Value<String> type;
  final Value<String> data1;
  final Value<String> data2;
  final Value<String> dataValidYn;
  final Value<DateTime> logDate;
  const NfcInfosCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.data1 = const Value.absent(),
    this.data2 = const Value.absent(),
    this.dataValidYn = const Value.absent(),
    this.logDate = const Value.absent(),
  });
  NfcInfosCompanion.insert({
    this.id = const Value.absent(),
    required String type,
    required String data1,
    required String data2,
    required String dataValidYn,
    required DateTime logDate,
  })  : type = Value(type),
        data1 = Value(data1),
        data2 = Value(data2),
        dataValidYn = Value(dataValidYn),
        logDate = Value(logDate);
  static Insertable<NfcInfo> custom({
    Expression<int>? id,
    Expression<String>? type,
    Expression<String>? data1,
    Expression<String>? data2,
    Expression<String>? dataValidYn,
    Expression<DateTime>? logDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (data1 != null) 'data1': data1,
      if (data2 != null) 'data2': data2,
      if (dataValidYn != null) 'data_valid_yn': dataValidYn,
      if (logDate != null) 'log_date': logDate,
    });
  }

  NfcInfosCompanion copyWith(
      {Value<int>? id,
      Value<String>? type,
      Value<String>? data1,
      Value<String>? data2,
      Value<String>? dataValidYn,
      Value<DateTime>? logDate}) {
    return NfcInfosCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      data1: data1 ?? this.data1,
      data2: data2 ?? this.data2,
      dataValidYn: dataValidYn ?? this.dataValidYn,
      logDate: logDate ?? this.logDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (data1.present) {
      map['data1'] = Variable<String>(data1.value);
    }
    if (data2.present) {
      map['data2'] = Variable<String>(data2.value);
    }
    if (dataValidYn.present) {
      map['data_valid_yn'] = Variable<String>(dataValidYn.value);
    }
    if (logDate.present) {
      map['log_date'] = Variable<DateTime>(logDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NfcInfosCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('data1: $data1, ')
          ..write('data2: $data2, ')
          ..write('dataValidYn: $dataValidYn, ')
          ..write('logDate: $logDate')
          ..write(')'))
        .toString();
  }
}

class $StudentRecordsTable extends StudentRecords
    with TableInfo<$StudentRecordsTable, StudentRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StudentRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _runDateMeta =
      const VerificationMeta('runDate');
  @override
  late final GeneratedColumn<DateTime> runDate = GeneratedColumn<DateTime>(
      'run_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _studentIdMeta =
      const VerificationMeta('studentId');
  @override
  late final GeneratedColumn<String> studentId = GeneratedColumn<String>(
      'student_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _classIdMeta =
      const VerificationMeta('classId');
  @override
  late final GeneratedColumn<String> classId = GeneratedColumn<String>(
      'class_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _startTagDtMeta =
      const VerificationMeta('startTagDt');
  @override
  late final GeneratedColumn<DateTime> startTagDt = GeneratedColumn<DateTime>(
      'start_tag_dt', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _middleTagDtMeta =
      const VerificationMeta('middleTagDt');
  @override
  late final GeneratedColumn<DateTime> middleTagDt = GeneratedColumn<DateTime>(
      'middle_tag_dt', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _middleLocIdMeta =
      const VerificationMeta('middleLocId');
  @override
  late final GeneratedColumn<String> middleLocId = GeneratedColumn<String>(
      'middle_loc_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _finishTagDtMeta =
      const VerificationMeta('finishTagDt');
  @override
  late final GeneratedColumn<DateTime> finishTagDt = GeneratedColumn<DateTime>(
      'finish_tag_dt', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _recordMsMeta =
      const VerificationMeta('recordMs');
  @override
  late final GeneratedColumn<int> recordMs = GeneratedColumn<int>(
      'record_ms', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _statusCodeMeta =
      const VerificationMeta('statusCode');
  @override
  late final GeneratedColumn<String> statusCode = GeneratedColumn<String>(
      'status_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        runDate,
        studentId,
        classId,
        startTagDt,
        middleTagDt,
        middleLocId,
        finishTagDt,
        recordMs,
        statusCode
      ];
  @override
  String get aliasedName => _alias ?? 'student_records';
  @override
  String get actualTableName => 'student_records';
  @override
  VerificationContext validateIntegrity(Insertable<StudentRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('run_date')) {
      context.handle(_runDateMeta,
          runDate.isAcceptableOrUnknown(data['run_date']!, _runDateMeta));
    } else if (isInserting) {
      context.missing(_runDateMeta);
    }
    if (data.containsKey('student_id')) {
      context.handle(_studentIdMeta,
          studentId.isAcceptableOrUnknown(data['student_id']!, _studentIdMeta));
    } else if (isInserting) {
      context.missing(_studentIdMeta);
    }
    if (data.containsKey('class_id')) {
      context.handle(_classIdMeta,
          classId.isAcceptableOrUnknown(data['class_id']!, _classIdMeta));
    } else if (isInserting) {
      context.missing(_classIdMeta);
    }
    if (data.containsKey('start_tag_dt')) {
      context.handle(
          _startTagDtMeta,
          startTagDt.isAcceptableOrUnknown(
              data['start_tag_dt']!, _startTagDtMeta));
    } else if (isInserting) {
      context.missing(_startTagDtMeta);
    }
    if (data.containsKey('middle_tag_dt')) {
      context.handle(
          _middleTagDtMeta,
          middleTagDt.isAcceptableOrUnknown(
              data['middle_tag_dt']!, _middleTagDtMeta));
    } else if (isInserting) {
      context.missing(_middleTagDtMeta);
    }
    if (data.containsKey('middle_loc_id')) {
      context.handle(
          _middleLocIdMeta,
          middleLocId.isAcceptableOrUnknown(
              data['middle_loc_id']!, _middleLocIdMeta));
    } else if (isInserting) {
      context.missing(_middleLocIdMeta);
    }
    if (data.containsKey('finish_tag_dt')) {
      context.handle(
          _finishTagDtMeta,
          finishTagDt.isAcceptableOrUnknown(
              data['finish_tag_dt']!, _finishTagDtMeta));
    } else if (isInserting) {
      context.missing(_finishTagDtMeta);
    }
    if (data.containsKey('record_ms')) {
      context.handle(_recordMsMeta,
          recordMs.isAcceptableOrUnknown(data['record_ms']!, _recordMsMeta));
    } else if (isInserting) {
      context.missing(_recordMsMeta);
    }
    if (data.containsKey('status_code')) {
      context.handle(
          _statusCodeMeta,
          statusCode.isAcceptableOrUnknown(
              data['status_code']!, _statusCodeMeta));
    } else if (isInserting) {
      context.missing(_statusCodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StudentRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StudentRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      runDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}run_date'])!,
      studentId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}student_id'])!,
      classId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}class_id'])!,
      startTagDt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_tag_dt'])!,
      middleTagDt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}middle_tag_dt'])!,
      middleLocId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}middle_loc_id'])!,
      finishTagDt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}finish_tag_dt'])!,
      recordMs: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}record_ms'])!,
      statusCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status_code'])!,
    );
  }

  @override
  $StudentRecordsTable createAlias(String alias) {
    return $StudentRecordsTable(attachedDatabase, alias);
  }
}

class StudentRecord extends DataClass implements Insertable<StudentRecord> {
  final int id;
  final DateTime runDate;
  final String studentId;
  final String classId;
  final DateTime startTagDt;
  final DateTime middleTagDt;
  final String middleLocId;
  final DateTime finishTagDt;
  final int recordMs;
  final String statusCode;
  const StudentRecord(
      {required this.id,
      required this.runDate,
      required this.studentId,
      required this.classId,
      required this.startTagDt,
      required this.middleTagDt,
      required this.middleLocId,
      required this.finishTagDt,
      required this.recordMs,
      required this.statusCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['run_date'] = Variable<DateTime>(runDate);
    map['student_id'] = Variable<String>(studentId);
    map['class_id'] = Variable<String>(classId);
    map['start_tag_dt'] = Variable<DateTime>(startTagDt);
    map['middle_tag_dt'] = Variable<DateTime>(middleTagDt);
    map['middle_loc_id'] = Variable<String>(middleLocId);
    map['finish_tag_dt'] = Variable<DateTime>(finishTagDt);
    map['record_ms'] = Variable<int>(recordMs);
    map['status_code'] = Variable<String>(statusCode);
    return map;
  }

  StudentRecordsCompanion toCompanion(bool nullToAbsent) {
    return StudentRecordsCompanion(
      id: Value(id),
      runDate: Value(runDate),
      studentId: Value(studentId),
      classId: Value(classId),
      startTagDt: Value(startTagDt),
      middleTagDt: Value(middleTagDt),
      middleLocId: Value(middleLocId),
      finishTagDt: Value(finishTagDt),
      recordMs: Value(recordMs),
      statusCode: Value(statusCode),
    );
  }

  factory StudentRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StudentRecord(
      id: serializer.fromJson<int>(json['id']),
      runDate: serializer.fromJson<DateTime>(json['runDate']),
      studentId: serializer.fromJson<String>(json['studentId']),
      classId: serializer.fromJson<String>(json['classId']),
      startTagDt: serializer.fromJson<DateTime>(json['startTagDt']),
      middleTagDt: serializer.fromJson<DateTime>(json['middleTagDt']),
      middleLocId: serializer.fromJson<String>(json['middleLocId']),
      finishTagDt: serializer.fromJson<DateTime>(json['finishTagDt']),
      recordMs: serializer.fromJson<int>(json['recordMs']),
      statusCode: serializer.fromJson<String>(json['statusCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'runDate': serializer.toJson<DateTime>(runDate),
      'studentId': serializer.toJson<String>(studentId),
      'classId': serializer.toJson<String>(classId),
      'startTagDt': serializer.toJson<DateTime>(startTagDt),
      'middleTagDt': serializer.toJson<DateTime>(middleTagDt),
      'middleLocId': serializer.toJson<String>(middleLocId),
      'finishTagDt': serializer.toJson<DateTime>(finishTagDt),
      'recordMs': serializer.toJson<int>(recordMs),
      'statusCode': serializer.toJson<String>(statusCode),
    };
  }

  StudentRecord copyWith(
          {int? id,
          DateTime? runDate,
          String? studentId,
          String? classId,
          DateTime? startTagDt,
          DateTime? middleTagDt,
          String? middleLocId,
          DateTime? finishTagDt,
          int? recordMs,
          String? statusCode}) =>
      StudentRecord(
        id: id ?? this.id,
        runDate: runDate ?? this.runDate,
        studentId: studentId ?? this.studentId,
        classId: classId ?? this.classId,
        startTagDt: startTagDt ?? this.startTagDt,
        middleTagDt: middleTagDt ?? this.middleTagDt,
        middleLocId: middleLocId ?? this.middleLocId,
        finishTagDt: finishTagDt ?? this.finishTagDt,
        recordMs: recordMs ?? this.recordMs,
        statusCode: statusCode ?? this.statusCode,
      );
  @override
  String toString() {
    return (StringBuffer('StudentRecord(')
          ..write('id: $id, ')
          ..write('runDate: $runDate, ')
          ..write('studentId: $studentId, ')
          ..write('classId: $classId, ')
          ..write('startTagDt: $startTagDt, ')
          ..write('middleTagDt: $middleTagDt, ')
          ..write('middleLocId: $middleLocId, ')
          ..write('finishTagDt: $finishTagDt, ')
          ..write('recordMs: $recordMs, ')
          ..write('statusCode: $statusCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, runDate, studentId, classId, startTagDt,
      middleTagDt, middleLocId, finishTagDt, recordMs, statusCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StudentRecord &&
          other.id == this.id &&
          other.runDate == this.runDate &&
          other.studentId == this.studentId &&
          other.classId == this.classId &&
          other.startTagDt == this.startTagDt &&
          other.middleTagDt == this.middleTagDt &&
          other.middleLocId == this.middleLocId &&
          other.finishTagDt == this.finishTagDt &&
          other.recordMs == this.recordMs &&
          other.statusCode == this.statusCode);
}

class StudentRecordsCompanion extends UpdateCompanion<StudentRecord> {
  final Value<int> id;
  final Value<DateTime> runDate;
  final Value<String> studentId;
  final Value<String> classId;
  final Value<DateTime> startTagDt;
  final Value<DateTime> middleTagDt;
  final Value<String> middleLocId;
  final Value<DateTime> finishTagDt;
  final Value<int> recordMs;
  final Value<String> statusCode;
  const StudentRecordsCompanion({
    this.id = const Value.absent(),
    this.runDate = const Value.absent(),
    this.studentId = const Value.absent(),
    this.classId = const Value.absent(),
    this.startTagDt = const Value.absent(),
    this.middleTagDt = const Value.absent(),
    this.middleLocId = const Value.absent(),
    this.finishTagDt = const Value.absent(),
    this.recordMs = const Value.absent(),
    this.statusCode = const Value.absent(),
  });
  StudentRecordsCompanion.insert({
    this.id = const Value.absent(),
    required DateTime runDate,
    required String studentId,
    required String classId,
    required DateTime startTagDt,
    required DateTime middleTagDt,
    required String middleLocId,
    required DateTime finishTagDt,
    required int recordMs,
    required String statusCode,
  })  : runDate = Value(runDate),
        studentId = Value(studentId),
        classId = Value(classId),
        startTagDt = Value(startTagDt),
        middleTagDt = Value(middleTagDt),
        middleLocId = Value(middleLocId),
        finishTagDt = Value(finishTagDt),
        recordMs = Value(recordMs),
        statusCode = Value(statusCode);
  static Insertable<StudentRecord> custom({
    Expression<int>? id,
    Expression<DateTime>? runDate,
    Expression<String>? studentId,
    Expression<String>? classId,
    Expression<DateTime>? startTagDt,
    Expression<DateTime>? middleTagDt,
    Expression<String>? middleLocId,
    Expression<DateTime>? finishTagDt,
    Expression<int>? recordMs,
    Expression<String>? statusCode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (runDate != null) 'run_date': runDate,
      if (studentId != null) 'student_id': studentId,
      if (classId != null) 'class_id': classId,
      if (startTagDt != null) 'start_tag_dt': startTagDt,
      if (middleTagDt != null) 'middle_tag_dt': middleTagDt,
      if (middleLocId != null) 'middle_loc_id': middleLocId,
      if (finishTagDt != null) 'finish_tag_dt': finishTagDt,
      if (recordMs != null) 'record_ms': recordMs,
      if (statusCode != null) 'status_code': statusCode,
    });
  }

  StudentRecordsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? runDate,
      Value<String>? studentId,
      Value<String>? classId,
      Value<DateTime>? startTagDt,
      Value<DateTime>? middleTagDt,
      Value<String>? middleLocId,
      Value<DateTime>? finishTagDt,
      Value<int>? recordMs,
      Value<String>? statusCode}) {
    return StudentRecordsCompanion(
      id: id ?? this.id,
      runDate: runDate ?? this.runDate,
      studentId: studentId ?? this.studentId,
      classId: classId ?? this.classId,
      startTagDt: startTagDt ?? this.startTagDt,
      middleTagDt: middleTagDt ?? this.middleTagDt,
      middleLocId: middleLocId ?? this.middleLocId,
      finishTagDt: finishTagDt ?? this.finishTagDt,
      recordMs: recordMs ?? this.recordMs,
      statusCode: statusCode ?? this.statusCode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (runDate.present) {
      map['run_date'] = Variable<DateTime>(runDate.value);
    }
    if (studentId.present) {
      map['student_id'] = Variable<String>(studentId.value);
    }
    if (classId.present) {
      map['class_id'] = Variable<String>(classId.value);
    }
    if (startTagDt.present) {
      map['start_tag_dt'] = Variable<DateTime>(startTagDt.value);
    }
    if (middleTagDt.present) {
      map['middle_tag_dt'] = Variable<DateTime>(middleTagDt.value);
    }
    if (middleLocId.present) {
      map['middle_loc_id'] = Variable<String>(middleLocId.value);
    }
    if (finishTagDt.present) {
      map['finish_tag_dt'] = Variable<DateTime>(finishTagDt.value);
    }
    if (recordMs.present) {
      map['record_ms'] = Variable<int>(recordMs.value);
    }
    if (statusCode.present) {
      map['status_code'] = Variable<String>(statusCode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudentRecordsCompanion(')
          ..write('id: $id, ')
          ..write('runDate: $runDate, ')
          ..write('studentId: $studentId, ')
          ..write('classId: $classId, ')
          ..write('startTagDt: $startTagDt, ')
          ..write('middleTagDt: $middleTagDt, ')
          ..write('middleLocId: $middleLocId, ')
          ..write('finishTagDt: $finishTagDt, ')
          ..write('recordMs: $recordMs, ')
          ..write('statusCode: $statusCode')
          ..write(')'))
        .toString();
  }
}

class $SystemCodesTable extends SystemCodes
    with TableInfo<$SystemCodesTable, SystemCode> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SystemCodesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _codeNameMeta =
      const VerificationMeta('codeName');
  @override
  late final GeneratedColumn<String> codeName = GeneratedColumn<String>(
      'code_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, type, code, codeName];
  @override
  String get aliasedName => _alias ?? 'system_code';
  @override
  String get actualTableName => 'system_code';
  @override
  VerificationContext validateIntegrity(Insertable<SystemCode> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('code_name')) {
      context.handle(_codeNameMeta,
          codeName.isAcceptableOrUnknown(data['code_name']!, _codeNameMeta));
    } else if (isInserting) {
      context.missing(_codeNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SystemCode map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SystemCode(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      codeName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code_name'])!,
    );
  }

  @override
  $SystemCodesTable createAlias(String alias) {
    return $SystemCodesTable(attachedDatabase, alias);
  }
}

class SystemCode extends DataClass implements Insertable<SystemCode> {
  final int id;
  final String type;
  final String code;
  final String codeName;
  const SystemCode(
      {required this.id,
      required this.type,
      required this.code,
      required this.codeName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['type'] = Variable<String>(type);
    map['code'] = Variable<String>(code);
    map['code_name'] = Variable<String>(codeName);
    return map;
  }

  SystemCodesCompanion toCompanion(bool nullToAbsent) {
    return SystemCodesCompanion(
      id: Value(id),
      type: Value(type),
      code: Value(code),
      codeName: Value(codeName),
    );
  }

  factory SystemCode.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SystemCode(
      id: serializer.fromJson<int>(json['id']),
      type: serializer.fromJson<String>(json['type']),
      code: serializer.fromJson<String>(json['code']),
      codeName: serializer.fromJson<String>(json['codeName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'type': serializer.toJson<String>(type),
      'code': serializer.toJson<String>(code),
      'codeName': serializer.toJson<String>(codeName),
    };
  }

  SystemCode copyWith(
          {int? id, String? type, String? code, String? codeName}) =>
      SystemCode(
        id: id ?? this.id,
        type: type ?? this.type,
        code: code ?? this.code,
        codeName: codeName ?? this.codeName,
      );
  @override
  String toString() {
    return (StringBuffer('SystemCode(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('code: $code, ')
          ..write('codeName: $codeName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type, code, codeName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SystemCode &&
          other.id == this.id &&
          other.type == this.type &&
          other.code == this.code &&
          other.codeName == this.codeName);
}

class SystemCodesCompanion extends UpdateCompanion<SystemCode> {
  final Value<int> id;
  final Value<String> type;
  final Value<String> code;
  final Value<String> codeName;
  const SystemCodesCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.code = const Value.absent(),
    this.codeName = const Value.absent(),
  });
  SystemCodesCompanion.insert({
    this.id = const Value.absent(),
    required String type,
    required String code,
    required String codeName,
  })  : type = Value(type),
        code = Value(code),
        codeName = Value(codeName);
  static Insertable<SystemCode> custom({
    Expression<int>? id,
    Expression<String>? type,
    Expression<String>? code,
    Expression<String>? codeName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (code != null) 'code': code,
      if (codeName != null) 'code_name': codeName,
    });
  }

  SystemCodesCompanion copyWith(
      {Value<int>? id,
      Value<String>? type,
      Value<String>? code,
      Value<String>? codeName}) {
    return SystemCodesCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      code: code ?? this.code,
      codeName: codeName ?? this.codeName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (codeName.present) {
      map['code_name'] = Variable<String>(codeName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SystemCodesCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('code: $code, ')
          ..write('codeName: $codeName')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  late final $StudentInfosTable studentInfos = $StudentInfosTable(this);
  late final $StudentClassInfosTable studentClassInfos =
      $StudentClassInfosTable(this);
  late final $NfcInfosTable nfcInfos = $NfcInfosTable(this);
  late final $StudentRecordsTable studentRecords = $StudentRecordsTable(this);
  late final $SystemCodesTable systemCodes = $SystemCodesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [studentInfos, studentClassInfos, nfcInfos, studentRecords, systemCodes];
}
