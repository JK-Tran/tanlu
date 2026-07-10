// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StudentAttendance {
  int get studentId => throw _privateConstructorUsedError;
  AttendanceStatus get status => throw _privateConstructorUsedError;
  DateTime? get checkInTime => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  /// Create a copy of StudentAttendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentAttendanceCopyWith<StudentAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentAttendanceCopyWith<$Res> {
  factory $StudentAttendanceCopyWith(
    StudentAttendance value,
    $Res Function(StudentAttendance) then,
  ) = _$StudentAttendanceCopyWithImpl<$Res, StudentAttendance>;
  @useResult
  $Res call({
    int studentId,
    AttendanceStatus status,
    DateTime? checkInTime,
    String note,
  });
}

/// @nodoc
class _$StudentAttendanceCopyWithImpl<$Res, $Val extends StudentAttendance>
    implements $StudentAttendanceCopyWith<$Res> {
  _$StudentAttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentAttendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? status = null,
    Object? checkInTime = freezed,
    Object? note = null,
  }) {
    return _then(
      _value.copyWith(
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as AttendanceStatus,
            checkInTime: freezed == checkInTime
                ? _value.checkInTime
                : checkInTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            note: null == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StudentAttendanceImplCopyWith<$Res>
    implements $StudentAttendanceCopyWith<$Res> {
  factory _$$StudentAttendanceImplCopyWith(
    _$StudentAttendanceImpl value,
    $Res Function(_$StudentAttendanceImpl) then,
  ) = __$$StudentAttendanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int studentId,
    AttendanceStatus status,
    DateTime? checkInTime,
    String note,
  });
}

/// @nodoc
class __$$StudentAttendanceImplCopyWithImpl<$Res>
    extends _$StudentAttendanceCopyWithImpl<$Res, _$StudentAttendanceImpl>
    implements _$$StudentAttendanceImplCopyWith<$Res> {
  __$$StudentAttendanceImplCopyWithImpl(
    _$StudentAttendanceImpl _value,
    $Res Function(_$StudentAttendanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentAttendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? status = null,
    Object? checkInTime = freezed,
    Object? note = null,
  }) {
    return _then(
      _$StudentAttendanceImpl(
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as AttendanceStatus,
        checkInTime: freezed == checkInTime
            ? _value.checkInTime
            : checkInTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        note: null == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$StudentAttendanceImpl implements _StudentAttendance {
  const _$StudentAttendanceImpl({
    this.studentId = 0,
    this.status = AttendanceStatus.notMarked,
    this.checkInTime,
    this.note = '',
  });

  @override
  @JsonKey()
  final int studentId;
  @override
  @JsonKey()
  final AttendanceStatus status;
  @override
  final DateTime? checkInTime;
  @override
  @JsonKey()
  final String note;

  @override
  String toString() {
    return 'StudentAttendance(studentId: $studentId, status: $status, checkInTime: $checkInTime, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentAttendanceImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, studentId, status, checkInTime, note);

  /// Create a copy of StudentAttendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentAttendanceImplCopyWith<_$StudentAttendanceImpl> get copyWith =>
      __$$StudentAttendanceImplCopyWithImpl<_$StudentAttendanceImpl>(
        this,
        _$identity,
      );
}

abstract class _StudentAttendance implements StudentAttendance {
  const factory _StudentAttendance({
    final int studentId,
    final AttendanceStatus status,
    final DateTime? checkInTime,
    final String note,
  }) = _$StudentAttendanceImpl;

  @override
  int get studentId;
  @override
  AttendanceStatus get status;
  @override
  DateTime? get checkInTime;
  @override
  String get note;

  /// Create a copy of StudentAttendance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentAttendanceImplCopyWith<_$StudentAttendanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
