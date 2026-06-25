// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_daily_attendance_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetDailyAttendanceInput {
  String get classId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  /// Create a copy of GetDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDailyAttendanceInputCopyWith<GetDailyAttendanceInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDailyAttendanceInputCopyWith<$Res> {
  factory $GetDailyAttendanceInputCopyWith(
    GetDailyAttendanceInput value,
    $Res Function(GetDailyAttendanceInput) then,
  ) = _$GetDailyAttendanceInputCopyWithImpl<$Res, GetDailyAttendanceInput>;
  @useResult
  $Res call({String classId, DateTime date});
}

/// @nodoc
class _$GetDailyAttendanceInputCopyWithImpl<
  $Res,
  $Val extends GetDailyAttendanceInput
>
    implements $GetDailyAttendanceInputCopyWith<$Res> {
  _$GetDailyAttendanceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? classId = null, Object? date = null}) {
    return _then(
      _value.copyWith(
            classId: null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String,
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetDailyAttendanceInputImplCopyWith<$Res>
    implements $GetDailyAttendanceInputCopyWith<$Res> {
  factory _$$GetDailyAttendanceInputImplCopyWith(
    _$GetDailyAttendanceInputImpl value,
    $Res Function(_$GetDailyAttendanceInputImpl) then,
  ) = __$$GetDailyAttendanceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String classId, DateTime date});
}

/// @nodoc
class __$$GetDailyAttendanceInputImplCopyWithImpl<$Res>
    extends
        _$GetDailyAttendanceInputCopyWithImpl<
          $Res,
          _$GetDailyAttendanceInputImpl
        >
    implements _$$GetDailyAttendanceInputImplCopyWith<$Res> {
  __$$GetDailyAttendanceInputImplCopyWithImpl(
    _$GetDailyAttendanceInputImpl _value,
    $Res Function(_$GetDailyAttendanceInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? classId = null, Object? date = null}) {
    return _then(
      _$GetDailyAttendanceInputImpl(
        classId: null == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$GetDailyAttendanceInputImpl
    with DiagnosticableTreeMixin
    implements _GetDailyAttendanceInput {
  const _$GetDailyAttendanceInputImpl({
    required this.classId,
    required this.date,
  });

  @override
  final String classId;
  @override
  final DateTime date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetDailyAttendanceInput(classId: $classId, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetDailyAttendanceInput'))
      ..add(DiagnosticsProperty('classId', classId))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyAttendanceInputImpl &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classId, date);

  /// Create a copy of GetDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDailyAttendanceInputImplCopyWith<_$GetDailyAttendanceInputImpl>
  get copyWith =>
      __$$GetDailyAttendanceInputImplCopyWithImpl<
        _$GetDailyAttendanceInputImpl
      >(this, _$identity);
}

abstract class _GetDailyAttendanceInput implements GetDailyAttendanceInput {
  const factory _GetDailyAttendanceInput({
    required final String classId,
    required final DateTime date,
  }) = _$GetDailyAttendanceInputImpl;

  @override
  String get classId;
  @override
  DateTime get date;

  /// Create a copy of GetDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDailyAttendanceInputImplCopyWith<_$GetDailyAttendanceInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetDailyAttendanceOutput {
  List<Student> get students => throw _privateConstructorUsedError;
  List<Attendance> get attendanceList => throw _privateConstructorUsedError;
  List<LeaveRequest> get leaveRequests => throw _privateConstructorUsedError;
  AttendanceSession? get session => throw _privateConstructorUsedError;

  /// Create a copy of GetDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDailyAttendanceOutputCopyWith<GetDailyAttendanceOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDailyAttendanceOutputCopyWith<$Res> {
  factory $GetDailyAttendanceOutputCopyWith(
    GetDailyAttendanceOutput value,
    $Res Function(GetDailyAttendanceOutput) then,
  ) = _$GetDailyAttendanceOutputCopyWithImpl<$Res, GetDailyAttendanceOutput>;
  @useResult
  $Res call({
    List<Student> students,
    List<Attendance> attendanceList,
    List<LeaveRequest> leaveRequests,
    AttendanceSession? session,
  });

  $AttendanceSessionCopyWith<$Res>? get session;
}

/// @nodoc
class _$GetDailyAttendanceOutputCopyWithImpl<
  $Res,
  $Val extends GetDailyAttendanceOutput
>
    implements $GetDailyAttendanceOutputCopyWith<$Res> {
  _$GetDailyAttendanceOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
    Object? attendanceList = null,
    Object? leaveRequests = null,
    Object? session = freezed,
  }) {
    return _then(
      _value.copyWith(
            students: null == students
                ? _value.students
                : students // ignore: cast_nullable_to_non_nullable
                      as List<Student>,
            attendanceList: null == attendanceList
                ? _value.attendanceList
                : attendanceList // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of GetDailyAttendanceOutput
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
abstract class _$$GetDailyAttendanceOutputImplCopyWith<$Res>
    implements $GetDailyAttendanceOutputCopyWith<$Res> {
  factory _$$GetDailyAttendanceOutputImplCopyWith(
    _$GetDailyAttendanceOutputImpl value,
    $Res Function(_$GetDailyAttendanceOutputImpl) then,
  ) = __$$GetDailyAttendanceOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Student> students,
    List<Attendance> attendanceList,
    List<LeaveRequest> leaveRequests,
    AttendanceSession? session,
  });

  @override
  $AttendanceSessionCopyWith<$Res>? get session;
}

/// @nodoc
class __$$GetDailyAttendanceOutputImplCopyWithImpl<$Res>
    extends
        _$GetDailyAttendanceOutputCopyWithImpl<
          $Res,
          _$GetDailyAttendanceOutputImpl
        >
    implements _$$GetDailyAttendanceOutputImplCopyWith<$Res> {
  __$$GetDailyAttendanceOutputImplCopyWithImpl(
    _$GetDailyAttendanceOutputImpl _value,
    $Res Function(_$GetDailyAttendanceOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
    Object? attendanceList = null,
    Object? leaveRequests = null,
    Object? session = freezed,
  }) {
    return _then(
      _$GetDailyAttendanceOutputImpl(
        students: null == students
            ? _value._students
            : students // ignore: cast_nullable_to_non_nullable
                  as List<Student>,
        attendanceList: null == attendanceList
            ? _value._attendanceList
            : attendanceList // ignore: cast_nullable_to_non_nullable
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

class _$GetDailyAttendanceOutputImpl extends _GetDailyAttendanceOutput
    with DiagnosticableTreeMixin {
  const _$GetDailyAttendanceOutputImpl({
    final List<Student> students = const [],
    final List<Attendance> attendanceList = const [],
    final List<LeaveRequest> leaveRequests = const [],
    this.session,
  }) : _students = students,
       _attendanceList = attendanceList,
       _leaveRequests = leaveRequests,
       super._();

  final List<Student> _students;
  @override
  @JsonKey()
  List<Student> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  final List<Attendance> _attendanceList;
  @override
  @JsonKey()
  List<Attendance> get attendanceList {
    if (_attendanceList is EqualUnmodifiableListView) return _attendanceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendanceList);
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetDailyAttendanceOutput(students: $students, attendanceList: $attendanceList, leaveRequests: $leaveRequests, session: $session)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetDailyAttendanceOutput'))
      ..add(DiagnosticsProperty('students', students))
      ..add(DiagnosticsProperty('attendanceList', attendanceList))
      ..add(DiagnosticsProperty('leaveRequests', leaveRequests))
      ..add(DiagnosticsProperty('session', session));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyAttendanceOutputImpl &&
            const DeepCollectionEquality().equals(other._students, _students) &&
            const DeepCollectionEquality().equals(
              other._attendanceList,
              _attendanceList,
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
    const DeepCollectionEquality().hash(_attendanceList),
    const DeepCollectionEquality().hash(_leaveRequests),
    session,
  );

  /// Create a copy of GetDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDailyAttendanceOutputImplCopyWith<_$GetDailyAttendanceOutputImpl>
  get copyWith =>
      __$$GetDailyAttendanceOutputImplCopyWithImpl<
        _$GetDailyAttendanceOutputImpl
      >(this, _$identity);
}

abstract class _GetDailyAttendanceOutput extends GetDailyAttendanceOutput {
  const factory _GetDailyAttendanceOutput({
    final List<Student> students,
    final List<Attendance> attendanceList,
    final List<LeaveRequest> leaveRequests,
    final AttendanceSession? session,
  }) = _$GetDailyAttendanceOutputImpl;
  const _GetDailyAttendanceOutput._() : super._();

  @override
  List<Student> get students;
  @override
  List<Attendance> get attendanceList;
  @override
  List<LeaveRequest> get leaveRequests;
  @override
  AttendanceSession? get session;

  /// Create a copy of GetDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDailyAttendanceOutputImplCopyWith<_$GetDailyAttendanceOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
