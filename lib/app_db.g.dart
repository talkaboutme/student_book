// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $StudentInfoTable extends StudentInfo
    with TableInfo<$StudentInfoTable, StudentInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StudentInfoTable(this.attachedDatabase, [this._alias]);
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
  late final GeneratedColumn<String> studentId = GeneratedColumn<String>(
      'student_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userNameMeta =
      const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String> userName = GeneratedColumn<String>(
      'user_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, studentId, userName];
  @override
  String get aliasedName => _alias ?? 'student_info';
  @override
  String get actualTableName => 'student_info';
  @override
  VerificationContext validateIntegrity(Insertable<StudentInfoData> instance,
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
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    } else if (isInserting) {
      context.missing(_userNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StudentInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StudentInfoData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      studentId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}student_id'])!,
      userName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_name'])!,
    );
  }

  @override
  $StudentInfoTable createAlias(String alias) {
    return $StudentInfoTable(attachedDatabase, alias);
  }
}

class StudentInfoData extends DataClass implements Insertable<StudentInfoData> {
  final int id;
  final String studentId;
  final String userName;
  const StudentInfoData(
      {required this.id, required this.studentId, required this.userName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['student_id'] = Variable<String>(studentId);
    map['user_name'] = Variable<String>(userName);
    return map;
  }

  StudentInfoCompanion toCompanion(bool nullToAbsent) {
    return StudentInfoCompanion(
      id: Value(id),
      studentId: Value(studentId),
      userName: Value(userName),
    );
  }

  factory StudentInfoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StudentInfoData(
      id: serializer.fromJson<int>(json['id']),
      studentId: serializer.fromJson<String>(json['studentId']),
      userName: serializer.fromJson<String>(json['userName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'studentId': serializer.toJson<String>(studentId),
      'userName': serializer.toJson<String>(userName),
    };
  }

  StudentInfoData copyWith({int? id, String? studentId, String? userName}) =>
      StudentInfoData(
        id: id ?? this.id,
        studentId: studentId ?? this.studentId,
        userName: userName ?? this.userName,
      );
  @override
  String toString() {
    return (StringBuffer('StudentInfoData(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('userName: $userName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, studentId, userName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StudentInfoData &&
          other.id == this.id &&
          other.studentId == this.studentId &&
          other.userName == this.userName);
}

class StudentInfoCompanion extends UpdateCompanion<StudentInfoData> {
  final Value<int> id;
  final Value<String> studentId;
  final Value<String> userName;
  const StudentInfoCompanion({
    this.id = const Value.absent(),
    this.studentId = const Value.absent(),
    this.userName = const Value.absent(),
  });
  StudentInfoCompanion.insert({
    this.id = const Value.absent(),
    required String studentId,
    required String userName,
  })  : studentId = Value(studentId),
        userName = Value(userName);
  static Insertable<StudentInfoData> custom({
    Expression<int>? id,
    Expression<String>? studentId,
    Expression<String>? userName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (studentId != null) 'student_id': studentId,
      if (userName != null) 'user_name': userName,
    });
  }

  StudentInfoCompanion copyWith(
      {Value<int>? id, Value<String>? studentId, Value<String>? userName}) {
    return StudentInfoCompanion(
      id: id ?? this.id,
      studentId: studentId ?? this.studentId,
      userName: userName ?? this.userName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (studentId.present) {
      map['student_id'] = Variable<String>(studentId.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudentInfoCompanion(')
          ..write('id: $id, ')
          ..write('studentId: $studentId, ')
          ..write('userName: $userName')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  late final $StudentInfoTable studentInfo = $StudentInfoTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [studentInfo];
}
