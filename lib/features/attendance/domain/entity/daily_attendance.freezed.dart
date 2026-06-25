// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DailyAttendance {
  List<Student> get students => throw _privateConstructorUsedError;
  List<Attendance> get attendances => throw _privateConstructorUsedError;
  List<LeaveRequest> get leaveRequests => throw _privateConstructorUsedError;
  AttendanceSession? get session => throw _privateConstructorUsedError;

  /// Create a copy of DailyAttendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyAttendanceCopyWith<DailyAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyAttendanceCopyWith<$Res> {
  factory $DailyAttendanceCopyWith(
    DailyAttendance value,
    $Res Function(DailyAttendance) then,
  ) = _$DailyAttendanceCopyWithImpl<$Res, DailyAttendance>;
  @useResult
  $Res call({
    List<Student> students,
    List<Attendance> attendances,
    List<LeaveRequest> leaveRequests,
    AttendanceSession? session,
  });

  $AttendanceSessionCopyWith<$Res>? get session;
}

/// @nodoc
class _$DailyAttendanceCopyWithImpl<$Res, $Val extends DailyAttendance>
    implements $DailyAttendanceCopyWith<$Res> {
  _$DailyAttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyAttendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
    Object? attendances = null,
    Object? leaveRequests = null,
    Object? session = freezed,
  }) {
    return _then(
      _value.copyWith(
            students: null == students
                ? _value.students
                : students // ignore: cast_nullable_to_non_nullable
                      as List<Student>,
            attendances: null == attendances
                ? _value.attendances
                : attendances // ignore: cast_nullable_to_non_nullable
                      as List<Attendance>,
            leaveRequests: null == leaveRequests
                ? _value.leaveRequests
                : leaveRequests // ignore: cast_nullable_to_non_nullable
                      as List<LeaveRequest>,
            session: freezed == session
                ? _value.session
                : session // ignore: cast_nullable_to_non_nullable
                      as AttendanceSession?,
          )
          as $Val,
    );
  }

  /// Create a copy of DailyAttendance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceSessionCopyWith<$Res>? get session {
    if (_value.session == null) {
      return null;
    }

    return $AttendanceSessionCopyWith<$Res>(_value.session!, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyAttendanceImplCopyWith<$Res>
    implements $DailyAttendanceCopyWith<$Res> {
  factory _$$DailyAttendanceImplCopyWith(
    _$DailyAttendanceImpl value,
    $Res Function(_$DailyAttendanceImpl) then,
  ) = __$$DailyAttendanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Student> students,
    List<Attendance> attendances,
    List<LeaveRequest> leaveRequests,
    AttendanceSession? session,
  });

  @override
  $AttendanceSessionCopyWith<$Res>? get session;
}

/// @nodoc
class __$$DailyAttendanceImplCopyWithImpl<$Res>
    extends _$DailyAttendanceCopyWithImpl<$Res, _$DailyAttendanceImpl>
    implements _$$DailyAttendanceImplCopyWith<$Res> {
  __$$DailyAttendanceImplCopyWithImpl(
    _$DailyAttendanceImpl _value,
    $Res Function(_$DailyAttendanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyAttendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
    Object? attendances = null,
    Object? leaveRequests = null,
    Object? session = freezed,
  }) {
    return _then(
      _$DailyAttendanceImpl(
        students: null == students
            ? _value._students
            : students // ignore: cast_nullable_to_non_nullable
                  as List<Student>,
        attendances: null == attendances
            ? _value._attendances
            : attendances // ignore: cast_nullable_to_non_nullable
                  as List<Attendance>,
        leaveRequests: null == leaveRequests
            ? _value._leaveRequests
            : leaveRequests // ignore: cast_nullable_to_non_nullable
                  as List<LeaveRequest>,
        session: freezed == session
            ? _value.session
            : session // ignore: cast_nullable_to_non_nullable
                  as AttendanceSession?,
      ),
    );
  }
}

/// @nodoc

class _$DailyAttendanceImpl implements _DailyAttendance {
  const _$DailyAttendanceImpl({
    final List<Student> students = const [],
    final List<Attendance> attendances = const [],
    final List<LeaveRequest> leaveRequests = const [],
    this.session,
  }) : _students = students,
       _attendances = attendances,
       _leaveRequests = leaveRequests;

  final List<Student> _students;
  @override
  @JsonKey()
  List<Student> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  final List<Attendance> _attendances;
  @override
  @JsonKey()
  List<Attendance> get attendances {
    if (_attendances is EqualUnmodifiableListView) return _attendances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendances);
  }

  final List<LeaveRequest> _leaveRequests;
  @override
  @JsonKey()
  List<LeaveRequest> get leaveRequests {
    if (_leaveRequests is EqualUnmodifiableListView) return _leaveRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaveRequests);
  }

  @override
  final AttendanceSession? session;

  @override
  String toString() {
    return 'DailyAttendance(students: $students, attendances: $attendances, leaveRequests: $leaveRequests, session: $session)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyAttendanceImpl &&
            const DeepCollectionEquality().equals(other._students, _students) &&
            const DeepCollectionEquality().equals(
              other._attendances,
              _attendances,
            ) &&
            const DeepCollectionEquality().equals(
              other._leaveRequests,
              _leaveRequests,
            ) &&
            (identical(other.session, session) || other.session == session));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_students),
    const DeepCollectionEquality().hash(_attendances),
    const DeepCollectionEquality().hash(_leaveRequests),
    session,
  );

  /// Create a copy of DailyAttendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyAttendanceImplCopyWith<_$DailyAttendanceImpl> get copyWith =>
      __$$DailyAttendanceImplCopyWithImpl<_$DailyAttendanceImpl>(
        this,
        _$identity,
      );
}

abstract class _DailyAttendance implements DailyAttendance {
  const factory _DailyAttendance({
    final List<Student> students,
    final List<Attendance> attendances,
    final List<LeaveRequest> leaveRequests,
    final AttendanceSession? session,
  }) = _$DailyAttendanceImpl;

  @override
  List<Student> get students;
  @override
  List<Attendance> get attendances;
  @override
  List<LeaveRequest> get leaveRequests;
  @override
  AttendanceSession? get session;

  /// Create a copy of DailyAttendance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyAttendanceImplCopyWith<_$DailyAttendanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
