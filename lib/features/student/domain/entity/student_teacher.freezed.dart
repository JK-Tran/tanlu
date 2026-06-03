// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_teacher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StudentTeacher {
  int get id => throw _privateConstructorUsedError;
  int get studentId => throw _privateConstructorUsedError;
  int get teacherId => throw _privateConstructorUsedError;
  bool get isPrimaryTeacher => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  Teacher get teacher => throw _privateConstructorUsedError;

  /// Create a copy of StudentTeacher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentTeacherCopyWith<StudentTeacher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentTeacherCopyWith<$Res> {
  factory $StudentTeacherCopyWith(
    StudentTeacher value,
    $Res Function(StudentTeacher) then,
  ) = _$StudentTeacherCopyWithImpl<$Res, StudentTeacher>;
  @useResult
  $Res call({
    int id,
    int studentId,
    int teacherId,
    bool isPrimaryTeacher,
    DateTime? startDate,
    DateTime? endDate,
    String status,
    DateTime? createdAt,
    Teacher teacher,
  });

  $TeacherCopyWith<$Res> get teacher;
}

/// @nodoc
class _$StudentTeacherCopyWithImpl<$Res, $Val extends StudentTeacher>
    implements $StudentTeacherCopyWith<$Res> {
  _$StudentTeacherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentTeacher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? teacherId = null,
    Object? isPrimaryTeacher = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? teacher = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int,
            teacherId: null == teacherId
                ? _value.teacherId
                : teacherId // ignore: cast_nullable_to_non_nullable
                      as int,
            isPrimaryTeacher: null == isPrimaryTeacher
                ? _value.isPrimaryTeacher
                : isPrimaryTeacher // ignore: cast_nullable_to_non_nullable
                      as bool,
            startDate: freezed == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            endDate: freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            teacher: null == teacher
                ? _value.teacher
                : teacher // ignore: cast_nullable_to_non_nullable
                      as Teacher,
          )
          as $Val,
    );
  }

  /// Create a copy of StudentTeacher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeacherCopyWith<$Res> get teacher {
    return $TeacherCopyWith<$Res>(_value.teacher, (value) {
      return _then(_value.copyWith(teacher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentTeacherImplCopyWith<$Res>
    implements $StudentTeacherCopyWith<$Res> {
  factory _$$StudentTeacherImplCopyWith(
    _$StudentTeacherImpl value,
    $Res Function(_$StudentTeacherImpl) then,
  ) = __$$StudentTeacherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int studentId,
    int teacherId,
    bool isPrimaryTeacher,
    DateTime? startDate,
    DateTime? endDate,
    String status,
    DateTime? createdAt,
    Teacher teacher,
  });

  @override
  $TeacherCopyWith<$Res> get teacher;
}

/// @nodoc
class __$$StudentTeacherImplCopyWithImpl<$Res>
    extends _$StudentTeacherCopyWithImpl<$Res, _$StudentTeacherImpl>
    implements _$$StudentTeacherImplCopyWith<$Res> {
  __$$StudentTeacherImplCopyWithImpl(
    _$StudentTeacherImpl _value,
    $Res Function(_$StudentTeacherImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentTeacher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? teacherId = null,
    Object? isPrimaryTeacher = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? teacher = null,
  }) {
    return _then(
      _$StudentTeacherImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int,
        teacherId: null == teacherId
            ? _value.teacherId
            : teacherId // ignore: cast_nullable_to_non_nullable
                  as int,
        isPrimaryTeacher: null == isPrimaryTeacher
            ? _value.isPrimaryTeacher
            : isPrimaryTeacher // ignore: cast_nullable_to_non_nullable
                  as bool,
        startDate: freezed == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        endDate: freezed == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        teacher: null == teacher
            ? _value.teacher
            : teacher // ignore: cast_nullable_to_non_nullable
                  as Teacher,
      ),
    );
  }
}

/// @nodoc

class _$StudentTeacherImpl implements _StudentTeacher {
  const _$StudentTeacherImpl({
    this.id = 0,
    this.studentId = 0,
    this.teacherId = 0,
    this.isPrimaryTeacher = false,
    this.startDate,
    this.endDate,
    this.status = '',
    this.createdAt,
    this.teacher = const Teacher(),
  });

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int studentId;
  @override
  @JsonKey()
  final int teacherId;
  @override
  @JsonKey()
  final bool isPrimaryTeacher;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final String status;
  @override
  final DateTime? createdAt;
  @override
  @JsonKey()
  final Teacher teacher;

  @override
  String toString() {
    return 'StudentTeacher(id: $id, studentId: $studentId, teacherId: $teacherId, isPrimaryTeacher: $isPrimaryTeacher, startDate: $startDate, endDate: $endDate, status: $status, createdAt: $createdAt, teacher: $teacher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentTeacherImpl &&
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

  /// Create a copy of StudentTeacher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentTeacherImplCopyWith<_$StudentTeacherImpl> get copyWith =>
      __$$StudentTeacherImplCopyWithImpl<_$StudentTeacherImpl>(
        this,
        _$identity,
      );
}

abstract class _StudentTeacher implements StudentTeacher {
  const factory _StudentTeacher({
    final int id,
    final int studentId,
    final int teacherId,
    final bool isPrimaryTeacher,
    final DateTime? startDate,
    final DateTime? endDate,
    final String status,
    final DateTime? createdAt,
    final Teacher teacher,
  }) = _$StudentTeacherImpl;

  @override
  int get id;
  @override
  int get studentId;
  @override
  int get teacherId;
  @override
  bool get isPrimaryTeacher;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String get status;
  @override
  DateTime? get createdAt;
  @override
  Teacher get teacher;

  /// Create a copy of StudentTeacher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentTeacherImplCopyWith<_$StudentTeacherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
