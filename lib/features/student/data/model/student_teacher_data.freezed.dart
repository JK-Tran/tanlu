// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_teacher_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StudentTeacherData _$StudentTeacherDataFromJson(Map<String, dynamic> json) {
  return _StudentTeacherData.fromJson(json);
}

/// @nodoc
mixin _$StudentTeacherData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey()
  int? get teacherId => throw _privateConstructorUsedError;
  @JsonKey()
  bool? get isPrimaryTeacher => throw _privateConstructorUsedError;
  @JsonKey()
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey()
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey()
  String? get status => throw _privateConstructorUsedError;
  @JsonKey()
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey()
  TeacherData? get teacher => throw _privateConstructorUsedError;

  /// Serializes this StudentTeacherData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentTeacherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentTeacherDataCopyWith<StudentTeacherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentTeacherDataCopyWith<$Res> {
  factory $StudentTeacherDataCopyWith(
    StudentTeacherData value,
    $Res Function(StudentTeacherData) then,
  ) = _$StudentTeacherDataCopyWithImpl<$Res, StudentTeacherData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? studentId,
    @JsonKey() int? teacherId,
    @JsonKey() bool? isPrimaryTeacher,
    @JsonKey() String? startDate,
    @JsonKey() String? endDate,
    @JsonKey() String? status,
    @JsonKey() String? createdAt,
    @JsonKey() TeacherData? teacher,
  });

  $TeacherDataCopyWith<$Res>? get teacher;
}

/// @nodoc
class _$StudentTeacherDataCopyWithImpl<$Res, $Val extends StudentTeacherData>
    implements $StudentTeacherDataCopyWith<$Res> {
  _$StudentTeacherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentTeacherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? teacherId = freezed,
    Object? isPrimaryTeacher = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? teacher = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            studentId: freezed == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            teacherId: freezed == teacherId
                ? _value.teacherId
                : teacherId // ignore: cast_nullable_to_non_nullable
                      as int?,
            isPrimaryTeacher: freezed == isPrimaryTeacher
                ? _value.isPrimaryTeacher
                : isPrimaryTeacher // ignore: cast_nullable_to_non_nullable
                      as bool?,
            startDate: freezed == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            endDate: freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            teacher: freezed == teacher
                ? _value.teacher
                : teacher // ignore: cast_nullable_to_non_nullable
                      as TeacherData?,
          )
          as $Val,
    );
  }

  /// Create a copy of StudentTeacherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeacherDataCopyWith<$Res>? get teacher {
    if (_value.teacher == null) {
      return null;
    }

    return $TeacherDataCopyWith<$Res>(_value.teacher!, (value) {
      return _then(_value.copyWith(teacher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentTeacherDataImplCopyWith<$Res>
    implements $StudentTeacherDataCopyWith<$Res> {
  factory _$$StudentTeacherDataImplCopyWith(
    _$StudentTeacherDataImpl value,
    $Res Function(_$StudentTeacherDataImpl) then,
  ) = __$$StudentTeacherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? studentId,
    @JsonKey() int? teacherId,
    @JsonKey() bool? isPrimaryTeacher,
    @JsonKey() String? startDate,
    @JsonKey() String? endDate,
    @JsonKey() String? status,
    @JsonKey() String? createdAt,
    @JsonKey() TeacherData? teacher,
  });

  @override
  $TeacherDataCopyWith<$Res>? get teacher;
}

/// @nodoc
class __$$StudentTeacherDataImplCopyWithImpl<$Res>
    extends _$StudentTeacherDataCopyWithImpl<$Res, _$StudentTeacherDataImpl>
    implements _$$StudentTeacherDataImplCopyWith<$Res> {
  __$$StudentTeacherDataImplCopyWithImpl(
    _$StudentTeacherDataImpl _value,
    $Res Function(_$StudentTeacherDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentTeacherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? teacherId = freezed,
    Object? isPrimaryTeacher = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? teacher = freezed,
  }) {
    return _then(
      _$StudentTeacherDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        studentId: freezed == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        teacherId: freezed == teacherId
            ? _value.teacherId
            : teacherId // ignore: cast_nullable_to_non_nullable
                  as int?,
        isPrimaryTeacher: freezed == isPrimaryTeacher
            ? _value.isPrimaryTeacher
            : isPrimaryTeacher // ignore: cast_nullable_to_non_nullable
                  as bool?,
        startDate: freezed == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        endDate: freezed == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        teacher: freezed == teacher
            ? _value.teacher
            : teacher // ignore: cast_nullable_to_non_nullable
                  as TeacherData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentTeacherDataImpl extends _StudentTeacherData {
  const _$StudentTeacherDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.studentId,
    @JsonKey() this.teacherId,
    @JsonKey() this.isPrimaryTeacher,
    @JsonKey() this.startDate,
    @JsonKey() this.endDate,
    @JsonKey() this.status,
    @JsonKey() this.createdAt,
    @JsonKey() this.teacher,
  }) : super._();

  factory _$StudentTeacherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentTeacherDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int? studentId;
  @override
  @JsonKey()
  final int? teacherId;
  @override
  @JsonKey()
  final bool? isPrimaryTeacher;
  @override
  @JsonKey()
  final String? startDate;
  @override
  @JsonKey()
  final String? endDate;
  @override
  @JsonKey()
  final String? status;
  @override
  @JsonKey()
  final String? createdAt;
  @override
  @JsonKey()
  final TeacherData? teacher;

  @override
  String toString() {
    return 'StudentTeacherData(id: $id, studentId: $studentId, teacherId: $teacherId, isPrimaryTeacher: $isPrimaryTeacher, startDate: $startDate, endDate: $endDate, status: $status, createdAt: $createdAt, teacher: $teacher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentTeacherDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.isPrimaryTeacher, isPrimaryTeacher) ||
                other.isPrimaryTeacher == isPrimaryTeacher) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.teacher, teacher) || other.teacher == teacher));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    studentId,
    teacherId,
    isPrimaryTeacher,
    startDate,
    endDate,
    status,
    createdAt,
    teacher,
  );

  /// Create a copy of StudentTeacherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentTeacherDataImplCopyWith<_$StudentTeacherDataImpl> get copyWith =>
      __$$StudentTeacherDataImplCopyWithImpl<_$StudentTeacherDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentTeacherDataImplToJson(this);
  }
}

abstract class _StudentTeacherData extends StudentTeacherData {
  const factory _StudentTeacherData({
    @JsonKey() final int? id,
    @JsonKey() final int? studentId,
    @JsonKey() final int? teacherId,
    @JsonKey() final bool? isPrimaryTeacher,
    @JsonKey() final String? startDate,
    @JsonKey() final String? endDate,
    @JsonKey() final String? status,
    @JsonKey() final String? createdAt,
    @JsonKey() final TeacherData? teacher,
  }) = _$StudentTeacherDataImpl;
  const _StudentTeacherData._() : super._();

  factory _StudentTeacherData.fromJson(Map<String, dynamic> json) =
      _$StudentTeacherDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  int? get studentId;
  @override
  @JsonKey()
  int? get teacherId;
  @override
  @JsonKey()
  bool? get isPrimaryTeacher;
  @override
  @JsonKey()
  String? get startDate;
  @override
  @JsonKey()
  String? get endDate;
  @override
  @JsonKey()
  String? get status;
  @override
  @JsonKey()
  String? get createdAt;
  @override
  @JsonKey()
  TeacherData? get teacher;

  /// Create a copy of StudentTeacherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentTeacherDataImplCopyWith<_$StudentTeacherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
