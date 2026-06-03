// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StudentData _$StudentDataFromJson(Map<String, dynamic> json) {
  return _StudentData.fromJson(json);
}

/// @nodoc
mixin _$StudentData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  int? get classId => throw _privateConstructorUsedError;
  @JsonKey()
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey()
  String? get nickname => throw _privateConstructorUsedError;
  @JsonKey()
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey()
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey()
  String? get avatarFileId => throw _privateConstructorUsedError;
  @JsonKey()
  String? get studentCode => throw _privateConstructorUsedError;
  @JsonKey()
  String? get enrollmentDate => throw _privateConstructorUsedError;
  @JsonKey()
  String? get status => throw _privateConstructorUsedError;
  @JsonKey()
  String? get initialReason => throw _privateConstructorUsedError;
  @JsonKey()
  String? get diagnosisSummary => throw _privateConstructorUsedError;
  @JsonKey()
  int? get developmentAgeMonth => throw _privateConstructorUsedError;
  @JsonKey()
  String? get supportLevel => throw _privateConstructorUsedError;
  @JsonKey()
  String? get note => throw _privateConstructorUsedError;
  @JsonKey()
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey()
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey()
  ClassroomData? get classroom => throw _privateConstructorUsedError;
  @JsonKey()
  List<StudentParentData>? get studentParents =>
      throw _privateConstructorUsedError;
  @JsonKey()
  List<StudentTeacherData>? get studentTeachers =>
      throw _privateConstructorUsedError;
  @JsonKey()
  List<ScreeningResultData>? get screeningResults =>
      throw _privateConstructorUsedError;
  @JsonKey()
  List<DevelopmentResultData>? get developmentResults =>
      throw _privateConstructorUsedError;

  /// Serializes this StudentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentDataCopyWith<StudentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentDataCopyWith<$Res> {
  factory $StudentDataCopyWith(
    StudentData value,
    $Res Function(StudentData) then,
  ) = _$StudentDataCopyWithImpl<$Res, StudentData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? classId,
    @JsonKey() String? fullName,
    @JsonKey() String? nickname,
    @JsonKey() String? gender,
    @JsonKey() String? dateOfBirth,
    @JsonKey() String? avatarFileId,
    @JsonKey() String? studentCode,
    @JsonKey() String? enrollmentDate,
    @JsonKey() String? status,
    @JsonKey() String? initialReason,
    @JsonKey() String? diagnosisSummary,
    @JsonKey() int? developmentAgeMonth,
    @JsonKey() String? supportLevel,
    @JsonKey() String? note,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() ClassroomData? classroom,
    @JsonKey() List<StudentParentData>? studentParents,
    @JsonKey() List<StudentTeacherData>? studentTeachers,
    @JsonKey() List<ScreeningResultData>? screeningResults,
    @JsonKey() List<DevelopmentResultData>? developmentResults,
  });

  $ClassroomDataCopyWith<$Res>? get classroom;
}

/// @nodoc
class _$StudentDataCopyWithImpl<$Res, $Val extends StudentData>
    implements $StudentDataCopyWith<$Res> {
  _$StudentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classId = freezed,
    Object? fullName = freezed,
    Object? nickname = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? avatarFileId = freezed,
    Object? studentCode = freezed,
    Object? enrollmentDate = freezed,
    Object? status = freezed,
    Object? initialReason = freezed,
    Object? diagnosisSummary = freezed,
    Object? developmentAgeMonth = freezed,
    Object? supportLevel = freezed,
    Object? note = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? classroom = freezed,
    Object? studentParents = freezed,
    Object? studentTeachers = freezed,
    Object? screeningResults = freezed,
    Object? developmentResults = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            classId: freezed == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as int?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            nickname: freezed == nickname
                ? _value.nickname
                : nickname // ignore: cast_nullable_to_non_nullable
                      as String?,
            gender: freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateOfBirth: freezed == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                      as String?,
            avatarFileId: freezed == avatarFileId
                ? _value.avatarFileId
                : avatarFileId // ignore: cast_nullable_to_non_nullable
                      as String?,
            studentCode: freezed == studentCode
                ? _value.studentCode
                : studentCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            enrollmentDate: freezed == enrollmentDate
                ? _value.enrollmentDate
                : enrollmentDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            initialReason: freezed == initialReason
                ? _value.initialReason
                : initialReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            diagnosisSummary: freezed == diagnosisSummary
                ? _value.diagnosisSummary
                : diagnosisSummary // ignore: cast_nullable_to_non_nullable
                      as String?,
            developmentAgeMonth: freezed == developmentAgeMonth
                ? _value.developmentAgeMonth
                : developmentAgeMonth // ignore: cast_nullable_to_non_nullable
                      as int?,
            supportLevel: freezed == supportLevel
                ? _value.supportLevel
                : supportLevel // ignore: cast_nullable_to_non_nullable
                      as String?,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            classroom: freezed == classroom
                ? _value.classroom
                : classroom // ignore: cast_nullable_to_non_nullable
                      as ClassroomData?,
            studentParents: freezed == studentParents
                ? _value.studentParents
                : studentParents // ignore: cast_nullable_to_non_nullable
                      as List<StudentParentData>?,
            studentTeachers: freezed == studentTeachers
                ? _value.studentTeachers
                : studentTeachers // ignore: cast_nullable_to_non_nullable
                      as List<StudentTeacherData>?,
            screeningResults: freezed == screeningResults
                ? _value.screeningResults
                : screeningResults // ignore: cast_nullable_to_non_nullable
                      as List<ScreeningResultData>?,
            developmentResults: freezed == developmentResults
                ? _value.developmentResults
                : developmentResults // ignore: cast_nullable_to_non_nullable
                      as List<DevelopmentResultData>?,
          )
          as $Val,
    );
  }

  /// Create a copy of StudentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassroomDataCopyWith<$Res>? get classroom {
    if (_value.classroom == null) {
      return null;
    }

    return $ClassroomDataCopyWith<$Res>(_value.classroom!, (value) {
      return _then(_value.copyWith(classroom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentDataImplCopyWith<$Res>
    implements $StudentDataCopyWith<$Res> {
  factory _$$StudentDataImplCopyWith(
    _$StudentDataImpl value,
    $Res Function(_$StudentDataImpl) then,
  ) = __$$StudentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? classId,
    @JsonKey() String? fullName,
    @JsonKey() String? nickname,
    @JsonKey() String? gender,
    @JsonKey() String? dateOfBirth,
    @JsonKey() String? avatarFileId,
    @JsonKey() String? studentCode,
    @JsonKey() String? enrollmentDate,
    @JsonKey() String? status,
    @JsonKey() String? initialReason,
    @JsonKey() String? diagnosisSummary,
    @JsonKey() int? developmentAgeMonth,
    @JsonKey() String? supportLevel,
    @JsonKey() String? note,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() ClassroomData? classroom,
    @JsonKey() List<StudentParentData>? studentParents,
    @JsonKey() List<StudentTeacherData>? studentTeachers,
    @JsonKey() List<ScreeningResultData>? screeningResults,
    @JsonKey() List<DevelopmentResultData>? developmentResults,
  });

  @override
  $ClassroomDataCopyWith<$Res>? get classroom;
}

/// @nodoc
class __$$StudentDataImplCopyWithImpl<$Res>
    extends _$StudentDataCopyWithImpl<$Res, _$StudentDataImpl>
    implements _$$StudentDataImplCopyWith<$Res> {
  __$$StudentDataImplCopyWithImpl(
    _$StudentDataImpl _value,
    $Res Function(_$StudentDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classId = freezed,
    Object? fullName = freezed,
    Object? nickname = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? avatarFileId = freezed,
    Object? studentCode = freezed,
    Object? enrollmentDate = freezed,
    Object? status = freezed,
    Object? initialReason = freezed,
    Object? diagnosisSummary = freezed,
    Object? developmentAgeMonth = freezed,
    Object? supportLevel = freezed,
    Object? note = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? classroom = freezed,
    Object? studentParents = freezed,
    Object? studentTeachers = freezed,
    Object? screeningResults = freezed,
    Object? developmentResults = freezed,
  }) {
    return _then(
      _$StudentDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as int?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        nickname: freezed == nickname
            ? _value.nickname
            : nickname // ignore: cast_nullable_to_non_nullable
                  as String?,
        gender: freezed == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateOfBirth: freezed == dateOfBirth
            ? _value.dateOfBirth
            : dateOfBirth // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatarFileId: freezed == avatarFileId
            ? _value.avatarFileId
            : avatarFileId // ignore: cast_nullable_to_non_nullable
                  as String?,
        studentCode: freezed == studentCode
            ? _value.studentCode
            : studentCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        enrollmentDate: freezed == enrollmentDate
            ? _value.enrollmentDate
            : enrollmentDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        initialReason: freezed == initialReason
            ? _value.initialReason
            : initialReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        diagnosisSummary: freezed == diagnosisSummary
            ? _value.diagnosisSummary
            : diagnosisSummary // ignore: cast_nullable_to_non_nullable
                  as String?,
        developmentAgeMonth: freezed == developmentAgeMonth
            ? _value.developmentAgeMonth
            : developmentAgeMonth // ignore: cast_nullable_to_non_nullable
                  as int?,
        supportLevel: freezed == supportLevel
            ? _value.supportLevel
            : supportLevel // ignore: cast_nullable_to_non_nullable
                  as String?,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        classroom: freezed == classroom
            ? _value.classroom
            : classroom // ignore: cast_nullable_to_non_nullable
                  as ClassroomData?,
        studentParents: freezed == studentParents
            ? _value._studentParents
            : studentParents // ignore: cast_nullable_to_non_nullable
                  as List<StudentParentData>?,
        studentTeachers: freezed == studentTeachers
            ? _value._studentTeachers
            : studentTeachers // ignore: cast_nullable_to_non_nullable
                  as List<StudentTeacherData>?,
        screeningResults: freezed == screeningResults
            ? _value._screeningResults
            : screeningResults // ignore: cast_nullable_to_non_nullable
                  as List<ScreeningResultData>?,
        developmentResults: freezed == developmentResults
            ? _value._developmentResults
            : developmentResults // ignore: cast_nullable_to_non_nullable
                  as List<DevelopmentResultData>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentDataImpl extends _StudentData {
  const _$StudentDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.classId,
    @JsonKey() this.fullName,
    @JsonKey() this.nickname,
    @JsonKey() this.gender,
    @JsonKey() this.dateOfBirth,
    @JsonKey() this.avatarFileId,
    @JsonKey() this.studentCode,
    @JsonKey() this.enrollmentDate,
    @JsonKey() this.status,
    @JsonKey() this.initialReason,
    @JsonKey() this.diagnosisSummary,
    @JsonKey() this.developmentAgeMonth,
    @JsonKey() this.supportLevel,
    @JsonKey() this.note,
    @JsonKey() this.createdAt,
    @JsonKey() this.updatedAt,
    @JsonKey() this.classroom,
    @JsonKey() final List<StudentParentData>? studentParents,
    @JsonKey() final List<StudentTeacherData>? studentTeachers,
    @JsonKey() final List<ScreeningResultData>? screeningResults,
    @JsonKey() final List<DevelopmentResultData>? developmentResults,
  }) : _studentParents = studentParents,
       _studentTeachers = studentTeachers,
       _screeningResults = screeningResults,
       _developmentResults = developmentResults,
       super._();

  factory _$StudentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int? classId;
  @override
  @JsonKey()
  final String? fullName;
  @override
  @JsonKey()
  final String? nickname;
  @override
  @JsonKey()
  final String? gender;
  @override
  @JsonKey()
  final String? dateOfBirth;
  @override
  @JsonKey()
  final String? avatarFileId;
  @override
  @JsonKey()
  final String? studentCode;
  @override
  @JsonKey()
  final String? enrollmentDate;
  @override
  @JsonKey()
  final String? status;
  @override
  @JsonKey()
  final String? initialReason;
  @override
  @JsonKey()
  final String? diagnosisSummary;
  @override
  @JsonKey()
  final int? developmentAgeMonth;
  @override
  @JsonKey()
  final String? supportLevel;
  @override
  @JsonKey()
  final String? note;
  @override
  @JsonKey()
  final String? createdAt;
  @override
  @JsonKey()
  final String? updatedAt;
  @override
  @JsonKey()
  final ClassroomData? classroom;
  final List<StudentParentData>? _studentParents;
  @override
  @JsonKey()
  List<StudentParentData>? get studentParents {
    final value = _studentParents;
    if (value == null) return null;
    if (_studentParents is EqualUnmodifiableListView) return _studentParents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<StudentTeacherData>? _studentTeachers;
  @override
  @JsonKey()
  List<StudentTeacherData>? get studentTeachers {
    final value = _studentTeachers;
    if (value == null) return null;
    if (_studentTeachers is EqualUnmodifiableListView) return _studentTeachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ScreeningResultData>? _screeningResults;
  @override
  @JsonKey()
  List<ScreeningResultData>? get screeningResults {
    final value = _screeningResults;
    if (value == null) return null;
    if (_screeningResults is EqualUnmodifiableListView)
      return _screeningResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DevelopmentResultData>? _developmentResults;
  @override
  @JsonKey()
  List<DevelopmentResultData>? get developmentResults {
    final value = _developmentResults;
    if (value == null) return null;
    if (_developmentResults is EqualUnmodifiableListView)
      return _developmentResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StudentData(id: $id, classId: $classId, fullName: $fullName, nickname: $nickname, gender: $gender, dateOfBirth: $dateOfBirth, avatarFileId: $avatarFileId, studentCode: $studentCode, enrollmentDate: $enrollmentDate, status: $status, initialReason: $initialReason, diagnosisSummary: $diagnosisSummary, developmentAgeMonth: $developmentAgeMonth, supportLevel: $supportLevel, note: $note, createdAt: $createdAt, updatedAt: $updatedAt, classroom: $classroom, studentParents: $studentParents, studentTeachers: $studentTeachers, screeningResults: $screeningResults, developmentResults: $developmentResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.avatarFileId, avatarFileId) ||
                other.avatarFileId == avatarFileId) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.enrollmentDate, enrollmentDate) ||
                other.enrollmentDate == enrollmentDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.initialReason, initialReason) ||
                other.initialReason == initialReason) &&
            (identical(other.diagnosisSummary, diagnosisSummary) ||
                other.diagnosisSummary == diagnosisSummary) &&
            (identical(other.developmentAgeMonth, developmentAgeMonth) ||
                other.developmentAgeMonth == developmentAgeMonth) &&
            (identical(other.supportLevel, supportLevel) ||
                other.supportLevel == supportLevel) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            const DeepCollectionEquality().equals(
              other._studentParents,
              _studentParents,
            ) &&
            const DeepCollectionEquality().equals(
              other._studentTeachers,
              _studentTeachers,
            ) &&
            const DeepCollectionEquality().equals(
              other._screeningResults,
              _screeningResults,
            ) &&
            const DeepCollectionEquality().equals(
              other._developmentResults,
              _developmentResults,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    classId,
    fullName,
    nickname,
    gender,
    dateOfBirth,
    avatarFileId,
    studentCode,
    enrollmentDate,
    status,
    initialReason,
    diagnosisSummary,
    developmentAgeMonth,
    supportLevel,
    note,
    createdAt,
    updatedAt,
    classroom,
    const DeepCollectionEquality().hash(_studentParents),
    const DeepCollectionEquality().hash(_studentTeachers),
    const DeepCollectionEquality().hash(_screeningResults),
    const DeepCollectionEquality().hash(_developmentResults),
  ]);

  /// Create a copy of StudentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentDataImplCopyWith<_$StudentDataImpl> get copyWith =>
      __$$StudentDataImplCopyWithImpl<_$StudentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentDataImplToJson(this);
  }
}

abstract class _StudentData extends StudentData {
  const factory _StudentData({
    @JsonKey() final int? id,
    @JsonKey() final int? classId,
    @JsonKey() final String? fullName,
    @JsonKey() final String? nickname,
    @JsonKey() final String? gender,
    @JsonKey() final String? dateOfBirth,
    @JsonKey() final String? avatarFileId,
    @JsonKey() final String? studentCode,
    @JsonKey() final String? enrollmentDate,
    @JsonKey() final String? status,
    @JsonKey() final String? initialReason,
    @JsonKey() final String? diagnosisSummary,
    @JsonKey() final int? developmentAgeMonth,
    @JsonKey() final String? supportLevel,
    @JsonKey() final String? note,
    @JsonKey() final String? createdAt,
    @JsonKey() final String? updatedAt,
    @JsonKey() final ClassroomData? classroom,
    @JsonKey() final List<StudentParentData>? studentParents,
    @JsonKey() final List<StudentTeacherData>? studentTeachers,
    @JsonKey() final List<ScreeningResultData>? screeningResults,
    @JsonKey() final List<DevelopmentResultData>? developmentResults,
  }) = _$StudentDataImpl;
  const _StudentData._() : super._();

  factory _StudentData.fromJson(Map<String, dynamic> json) =
      _$StudentDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  int? get classId;
  @override
  @JsonKey()
  String? get fullName;
  @override
  @JsonKey()
  String? get nickname;
  @override
  @JsonKey()
  String? get gender;
  @override
  @JsonKey()
  String? get dateOfBirth;
  @override
  @JsonKey()
  String? get avatarFileId;
  @override
  @JsonKey()
  String? get studentCode;
  @override
  @JsonKey()
  String? get enrollmentDate;
  @override
  @JsonKey()
  String? get status;
  @override
  @JsonKey()
  String? get initialReason;
  @override
  @JsonKey()
  String? get diagnosisSummary;
  @override
  @JsonKey()
  int? get developmentAgeMonth;
  @override
  @JsonKey()
  String? get supportLevel;
  @override
  @JsonKey()
  String? get note;
  @override
  @JsonKey()
  String? get createdAt;
  @override
  @JsonKey()
  String? get updatedAt;
  @override
  @JsonKey()
  ClassroomData? get classroom;
  @override
  @JsonKey()
  List<StudentParentData>? get studentParents;
  @override
  @JsonKey()
  List<StudentTeacherData>? get studentTeachers;
  @override
  @JsonKey()
  List<ScreeningResultData>? get screeningResults;
  @override
  @JsonKey()
  List<DevelopmentResultData>? get developmentResults;

  /// Create a copy of StudentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentDataImplCopyWith<_$StudentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassroomData _$ClassroomDataFromJson(Map<String, dynamic> json) {
  return _ClassroomData.fromJson(json);
}

/// @nodoc
mixin _$ClassroomData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  CenterData get center => throw _privateConstructorUsedError;

  /// Serializes this ClassroomData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassroomData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassroomDataCopyWith<ClassroomData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomDataCopyWith<$Res> {
  factory $ClassroomDataCopyWith(
    ClassroomData value,
    $Res Function(ClassroomData) then,
  ) = _$ClassroomDataCopyWithImpl<$Res, ClassroomData>;
  @useResult
  $Res call({int? id, String? name, String? code, CenterData center});

  $CenterDataCopyWith<$Res> get center;
}

/// @nodoc
class _$ClassroomDataCopyWithImpl<$Res, $Val extends ClassroomData>
    implements $ClassroomDataCopyWith<$Res> {
  _$ClassroomDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassroomData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? center = null,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            code: freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String?,
            center: null == center
                ? _value.center
                : center // ignore: cast_nullable_to_non_nullable
                      as CenterData,
          )
          as $Val,
    );
  }

  /// Create a copy of ClassroomData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CenterDataCopyWith<$Res> get center {
    return $CenterDataCopyWith<$Res>(_value.center, (value) {
      return _then(_value.copyWith(center: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassroomDataImplCopyWith<$Res>
    implements $ClassroomDataCopyWith<$Res> {
  factory _$$ClassroomDataImplCopyWith(
    _$ClassroomDataImpl value,
    $Res Function(_$ClassroomDataImpl) then,
  ) = __$$ClassroomDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? code, CenterData center});

  @override
  $CenterDataCopyWith<$Res> get center;
}

/// @nodoc
class __$$ClassroomDataImplCopyWithImpl<$Res>
    extends _$ClassroomDataCopyWithImpl<$Res, _$ClassroomDataImpl>
    implements _$$ClassroomDataImplCopyWith<$Res> {
  __$$ClassroomDataImplCopyWithImpl(
    _$ClassroomDataImpl _value,
    $Res Function(_$ClassroomDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClassroomData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? center = null,
  }) {
    return _then(
      _$ClassroomDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String?,
        center: null == center
            ? _value.center
            : center // ignore: cast_nullable_to_non_nullable
                  as CenterData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassroomDataImpl extends _ClassroomData {
  const _$ClassroomDataImpl({
    this.id = 0,
    this.name = '',
    this.code = '',
    this.center = const CenterData(),
  }) : super._();

  factory _$ClassroomDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassroomDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? code;
  @override
  @JsonKey()
  final CenterData center;

  @override
  String toString() {
    return 'ClassroomData(id: $id, name: $name, code: $code, center: $center)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassroomDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.center, center) || other.center == center));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code, center);

  /// Create a copy of ClassroomData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomDataImplCopyWith<_$ClassroomDataImpl> get copyWith =>
      __$$ClassroomDataImplCopyWithImpl<_$ClassroomDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassroomDataImplToJson(this);
  }
}

abstract class _ClassroomData extends ClassroomData {
  const factory _ClassroomData({
    final int? id,
    final String? name,
    final String? code,
    final CenterData center,
  }) = _$ClassroomDataImpl;
  const _ClassroomData._() : super._();

  factory _ClassroomData.fromJson(Map<String, dynamic> json) =
      _$ClassroomDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  CenterData get center;

  /// Create a copy of ClassroomData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassroomDataImplCopyWith<_$ClassroomDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentsResponseData _$StudentsResponseDataFromJson(Map<String, dynamic> json) {
  return _StudentsResponseData.fromJson(json);
}

/// @nodoc
mixin _$StudentsResponseData {
  @JsonKey(name: 'students')
  List<StudentData> get students => throw _privateConstructorUsedError;

  /// Serializes this StudentsResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentsResponseDataCopyWith<StudentsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentsResponseDataCopyWith<$Res> {
  factory $StudentsResponseDataCopyWith(
    StudentsResponseData value,
    $Res Function(StudentsResponseData) then,
  ) = _$StudentsResponseDataCopyWithImpl<$Res, StudentsResponseData>;
  @useResult
  $Res call({@JsonKey(name: 'students') List<StudentData> students});
}

/// @nodoc
class _$StudentsResponseDataCopyWithImpl<
  $Res,
  $Val extends StudentsResponseData
>
    implements $StudentsResponseDataCopyWith<$Res> {
  _$StudentsResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? students = null}) {
    return _then(
      _value.copyWith(
            students: null == students
                ? _value.students
                : students // ignore: cast_nullable_to_non_nullable
                      as List<StudentData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StudentsResponseDataImplCopyWith<$Res>
    implements $StudentsResponseDataCopyWith<$Res> {
  factory _$$StudentsResponseDataImplCopyWith(
    _$StudentsResponseDataImpl value,
    $Res Function(_$StudentsResponseDataImpl) then,
  ) = __$$StudentsResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'students') List<StudentData> students});
}

/// @nodoc
class __$$StudentsResponseDataImplCopyWithImpl<$Res>
    extends _$StudentsResponseDataCopyWithImpl<$Res, _$StudentsResponseDataImpl>
    implements _$$StudentsResponseDataImplCopyWith<$Res> {
  __$$StudentsResponseDataImplCopyWithImpl(
    _$StudentsResponseDataImpl _value,
    $Res Function(_$StudentsResponseDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? students = null}) {
    return _then(
      _$StudentsResponseDataImpl(
        students: null == students
            ? _value._students
            : students // ignore: cast_nullable_to_non_nullable
                  as List<StudentData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentsResponseDataImpl implements _StudentsResponseData {
  const _$StudentsResponseDataImpl({
    @JsonKey(name: 'students') required final List<StudentData> students,
  }) : _students = students;

  factory _$StudentsResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentsResponseDataImplFromJson(json);

  final List<StudentData> _students;
  @override
  @JsonKey(name: 'students')
  List<StudentData> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'StudentsResponseData(students: $students)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentsResponseDataImpl &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_students));

  /// Create a copy of StudentsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentsResponseDataImplCopyWith<_$StudentsResponseDataImpl>
  get copyWith =>
      __$$StudentsResponseDataImplCopyWithImpl<_$StudentsResponseDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentsResponseDataImplToJson(this);
  }
}

abstract class _StudentsResponseData implements StudentsResponseData {
  const factory _StudentsResponseData({
    @JsonKey(name: 'students') required final List<StudentData> students,
  }) = _$StudentsResponseDataImpl;

  factory _StudentsResponseData.fromJson(Map<String, dynamic> json) =
      _$StudentsResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'students')
  List<StudentData> get students;

  /// Create a copy of StudentsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentsResponseDataImplCopyWith<_$StudentsResponseDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}

StudentResponseData _$StudentResponseDataFromJson(Map<String, dynamic> json) {
  return _StudentResponseData.fromJson(json);
}

/// @nodoc
mixin _$StudentResponseData {
  @JsonKey(name: 'student')
  StudentData get student => throw _privateConstructorUsedError;

  /// Serializes this StudentResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentResponseDataCopyWith<StudentResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentResponseDataCopyWith<$Res> {
  factory $StudentResponseDataCopyWith(
    StudentResponseData value,
    $Res Function(StudentResponseData) then,
  ) = _$StudentResponseDataCopyWithImpl<$Res, StudentResponseData>;
  @useResult
  $Res call({@JsonKey(name: 'student') StudentData student});

  $StudentDataCopyWith<$Res> get student;
}

/// @nodoc
class _$StudentResponseDataCopyWithImpl<$Res, $Val extends StudentResponseData>
    implements $StudentResponseDataCopyWith<$Res> {
  _$StudentResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? student = null}) {
    return _then(
      _value.copyWith(
            student: null == student
                ? _value.student
                : student // ignore: cast_nullable_to_non_nullable
                      as StudentData,
          )
          as $Val,
    );
  }

  /// Create a copy of StudentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentDataCopyWith<$Res> get student {
    return $StudentDataCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentResponseDataImplCopyWith<$Res>
    implements $StudentResponseDataCopyWith<$Res> {
  factory _$$StudentResponseDataImplCopyWith(
    _$StudentResponseDataImpl value,
    $Res Function(_$StudentResponseDataImpl) then,
  ) = __$$StudentResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'student') StudentData student});

  @override
  $StudentDataCopyWith<$Res> get student;
}

/// @nodoc
class __$$StudentResponseDataImplCopyWithImpl<$Res>
    extends _$StudentResponseDataCopyWithImpl<$Res, _$StudentResponseDataImpl>
    implements _$$StudentResponseDataImplCopyWith<$Res> {
  __$$StudentResponseDataImplCopyWithImpl(
    _$StudentResponseDataImpl _value,
    $Res Function(_$StudentResponseDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? student = null}) {
    return _then(
      _$StudentResponseDataImpl(
        student: null == student
            ? _value.student
            : student // ignore: cast_nullable_to_non_nullable
                  as StudentData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentResponseDataImpl implements _StudentResponseData {
  const _$StudentResponseDataImpl({
    @JsonKey(name: 'student') required this.student,
  });

  factory _$StudentResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'student')
  final StudentData student;

  @override
  String toString() {
    return 'StudentResponseData(student: $student)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentResponseDataImpl &&
            (identical(other.student, student) || other.student == student));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, student);

  /// Create a copy of StudentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentResponseDataImplCopyWith<_$StudentResponseDataImpl> get copyWith =>
      __$$StudentResponseDataImplCopyWithImpl<_$StudentResponseDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentResponseDataImplToJson(this);
  }
}

abstract class _StudentResponseData implements StudentResponseData {
  const factory _StudentResponseData({
    @JsonKey(name: 'student') required final StudentData student,
  }) = _$StudentResponseDataImpl;

  factory _StudentResponseData.fromJson(Map<String, dynamic> json) =
      _$StudentResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'student')
  StudentData get student;

  /// Create a copy of StudentResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentResponseDataImplCopyWith<_$StudentResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
