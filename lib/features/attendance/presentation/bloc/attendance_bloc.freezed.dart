// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FetchDailyAttendance {
  String get classId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  /// Create a copy of FetchDailyAttendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FetchDailyAttendanceCopyWith<FetchDailyAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchDailyAttendanceCopyWith<$Res> {
  factory $FetchDailyAttendanceCopyWith(
    FetchDailyAttendance value,
    $Res Function(FetchDailyAttendance) then,
  ) = _$FetchDailyAttendanceCopyWithImpl<$Res, FetchDailyAttendance>;
  @useResult
  $Res call({String classId, DateTime date});
}

/// @nodoc
class _$FetchDailyAttendanceCopyWithImpl<
  $Res,
  $Val extends FetchDailyAttendance
>
    implements $FetchDailyAttendanceCopyWith<$Res> {
  _$FetchDailyAttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchDailyAttendance
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
abstract class _$$FetchDailyAttendanceImplCopyWith<$Res>
    implements $FetchDailyAttendanceCopyWith<$Res> {
  factory _$$FetchDailyAttendanceImplCopyWith(
    _$FetchDailyAttendanceImpl value,
    $Res Function(_$FetchDailyAttendanceImpl) then,
  ) = __$$FetchDailyAttendanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String classId, DateTime date});
}

/// @nodoc
class __$$FetchDailyAttendanceImplCopyWithImpl<$Res>
    extends _$FetchDailyAttendanceCopyWithImpl<$Res, _$FetchDailyAttendanceImpl>
    implements _$$FetchDailyAttendanceImplCopyWith<$Res> {
  __$$FetchDailyAttendanceImplCopyWithImpl(
    _$FetchDailyAttendanceImpl _value,
    $Res Function(_$FetchDailyAttendanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FetchDailyAttendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? classId = null, Object? date = null}) {
    return _then(
      _$FetchDailyAttendanceImpl(
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

class _$FetchDailyAttendanceImpl implements _FetchDailyAttendance {
  const _$FetchDailyAttendanceImpl({required this.classId, required this.date});

  @override
  final String classId;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'FetchDailyAttendance(classId: $classId, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDailyAttendanceImpl &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classId, date);

  /// Create a copy of FetchDailyAttendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDailyAttendanceImplCopyWith<_$FetchDailyAttendanceImpl>
  get copyWith =>
      __$$FetchDailyAttendanceImplCopyWithImpl<_$FetchDailyAttendanceImpl>(
        this,
        _$identity,
      );
}

abstract class _FetchDailyAttendance implements FetchDailyAttendance {
  const factory _FetchDailyAttendance({
    required final String classId,
    required final DateTime date,
  }) = _$FetchDailyAttendanceImpl;

  @override
  String get classId;
  @override
  DateTime get date;

  /// Create a copy of FetchDailyAttendance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchDailyAttendanceImplCopyWith<_$FetchDailyAttendanceImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchAttendanceHistoryEvent {
  String get classId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  /// Create a copy of FetchAttendanceHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FetchAttendanceHistoryEventCopyWith<FetchAttendanceHistoryEvent>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchAttendanceHistoryEventCopyWith<$Res> {
  factory $FetchAttendanceHistoryEventCopyWith(
    FetchAttendanceHistoryEvent value,
    $Res Function(FetchAttendanceHistoryEvent) then,
  ) =
      _$FetchAttendanceHistoryEventCopyWithImpl<
        $Res,
        FetchAttendanceHistoryEvent
      >;
  @useResult
  $Res call({String classId, DateTime date});
}

/// @nodoc
class _$FetchAttendanceHistoryEventCopyWithImpl<
  $Res,
  $Val extends FetchAttendanceHistoryEvent
>
    implements $FetchAttendanceHistoryEventCopyWith<$Res> {
  _$FetchAttendanceHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchAttendanceHistoryEvent
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
abstract class _$$FetchAttendanceHistoryEventImplCopyWith<$Res>
    implements $FetchAttendanceHistoryEventCopyWith<$Res> {
  factory _$$FetchAttendanceHistoryEventImplCopyWith(
    _$FetchAttendanceHistoryEventImpl value,
    $Res Function(_$FetchAttendanceHistoryEventImpl) then,
  ) = __$$FetchAttendanceHistoryEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String classId, DateTime date});
}

/// @nodoc
class __$$FetchAttendanceHistoryEventImplCopyWithImpl<$Res>
    extends
        _$FetchAttendanceHistoryEventCopyWithImpl<
          $Res,
          _$FetchAttendanceHistoryEventImpl
        >
    implements _$$FetchAttendanceHistoryEventImplCopyWith<$Res> {
  __$$FetchAttendanceHistoryEventImplCopyWithImpl(
    _$FetchAttendanceHistoryEventImpl _value,
    $Res Function(_$FetchAttendanceHistoryEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FetchAttendanceHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? classId = null, Object? date = null}) {
    return _then(
      _$FetchAttendanceHistoryEventImpl(
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

class _$FetchAttendanceHistoryEventImpl
    implements _FetchAttendanceHistoryEvent {
  const _$FetchAttendanceHistoryEventImpl({
    required this.classId,
    required this.date,
  });

  @override
  final String classId;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'FetchAttendanceHistoryEvent(classId: $classId, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAttendanceHistoryEventImpl &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classId, date);

  /// Create a copy of FetchAttendanceHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAttendanceHistoryEventImplCopyWith<_$FetchAttendanceHistoryEventImpl>
  get copyWith =>
      __$$FetchAttendanceHistoryEventImplCopyWithImpl<
        _$FetchAttendanceHistoryEventImpl
      >(this, _$identity);
}

abstract class _FetchAttendanceHistoryEvent
    implements FetchAttendanceHistoryEvent {
  const factory _FetchAttendanceHistoryEvent({
    required final String classId,
    required final DateTime date,
  }) = _$FetchAttendanceHistoryEventImpl;

  @override
  String get classId;
  @override
  DateTime get date;

  /// Create a copy of FetchAttendanceHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchAttendanceHistoryEventImplCopyWith<_$FetchAttendanceHistoryEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MarkStudentAttendanceEvent {
  Attendance get attendance => throw _privateConstructorUsedError;

  /// Create a copy of MarkStudentAttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarkStudentAttendanceEventCopyWith<MarkStudentAttendanceEvent>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkStudentAttendanceEventCopyWith<$Res> {
  factory $MarkStudentAttendanceEventCopyWith(
    MarkStudentAttendanceEvent value,
    $Res Function(MarkStudentAttendanceEvent) then,
  ) =
      _$MarkStudentAttendanceEventCopyWithImpl<
        $Res,
        MarkStudentAttendanceEvent
      >;
  @useResult
  $Res call({Attendance attendance});

  $AttendanceCopyWith<$Res> get attendance;
}

/// @nodoc
class _$MarkStudentAttendanceEventCopyWithImpl<
  $Res,
  $Val extends MarkStudentAttendanceEvent
>
    implements $MarkStudentAttendanceEventCopyWith<$Res> {
  _$MarkStudentAttendanceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarkStudentAttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? attendance = null}) {
    return _then(
      _value.copyWith(
            attendance: null == attendance
                ? _value.attendance
                : attendance // ignore: cast_nullable_to_non_nullable
                      as Attendance,
          )
          as $Val,
    );
  }

  /// Create a copy of MarkStudentAttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceCopyWith<$Res> get attendance {
    return $AttendanceCopyWith<$Res>(_value.attendance, (value) {
      return _then(_value.copyWith(attendance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MarkStudentAttendanceEventImplCopyWith<$Res>
    implements $MarkStudentAttendanceEventCopyWith<$Res> {
  factory _$$MarkStudentAttendanceEventImplCopyWith(
    _$MarkStudentAttendanceEventImpl value,
    $Res Function(_$MarkStudentAttendanceEventImpl) then,
  ) = __$$MarkStudentAttendanceEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Attendance attendance});

  @override
  $AttendanceCopyWith<$Res> get attendance;
}

/// @nodoc
class __$$MarkStudentAttendanceEventImplCopyWithImpl<$Res>
    extends
        _$MarkStudentAttendanceEventCopyWithImpl<
          $Res,
          _$MarkStudentAttendanceEventImpl
        >
    implements _$$MarkStudentAttendanceEventImplCopyWith<$Res> {
  __$$MarkStudentAttendanceEventImplCopyWithImpl(
    _$MarkStudentAttendanceEventImpl _value,
    $Res Function(_$MarkStudentAttendanceEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MarkStudentAttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? attendance = null}) {
    return _then(
      _$MarkStudentAttendanceEventImpl(
        attendance: null == attendance
            ? _value.attendance
            : attendance // ignore: cast_nullable_to_non_nullable
                  as Attendance,
      ),
    );
  }
}

/// @nodoc

class _$MarkStudentAttendanceEventImpl implements _MarkStudentAttendanceEvent {
  const _$MarkStudentAttendanceEventImpl({required this.attendance});

  @override
  final Attendance attendance;

  @override
  String toString() {
    return 'MarkStudentAttendanceEvent(attendance: $attendance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkStudentAttendanceEventImpl &&
            (identical(other.attendance, attendance) ||
                other.attendance == attendance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attendance);

  /// Create a copy of MarkStudentAttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkStudentAttendanceEventImplCopyWith<_$MarkStudentAttendanceEventImpl>
  get copyWith =>
      __$$MarkStudentAttendanceEventImplCopyWithImpl<
        _$MarkStudentAttendanceEventImpl
      >(this, _$identity);
}

abstract class _MarkStudentAttendanceEvent
    implements MarkStudentAttendanceEvent {
  const factory _MarkStudentAttendanceEvent({
    required final Attendance attendance,
  }) = _$MarkStudentAttendanceEventImpl;

  @override
  Attendance get attendance;

  /// Create a copy of MarkStudentAttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkStudentAttendanceEventImplCopyWith<_$MarkStudentAttendanceEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompleteAttendanceSessionEvent {}

/// @nodoc
abstract class $CompleteAttendanceSessionEventCopyWith<$Res> {
  factory $CompleteAttendanceSessionEventCopyWith(
    CompleteAttendanceSessionEvent value,
    $Res Function(CompleteAttendanceSessionEvent) then,
  ) =
      _$CompleteAttendanceSessionEventCopyWithImpl<
        $Res,
        CompleteAttendanceSessionEvent
      >;
}

/// @nodoc
class _$CompleteAttendanceSessionEventCopyWithImpl<
  $Res,
  $Val extends CompleteAttendanceSessionEvent
>
    implements $CompleteAttendanceSessionEventCopyWith<$Res> {
  _$CompleteAttendanceSessionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompleteAttendanceSessionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CompleteAttendanceSessionEventImplCopyWith<$Res> {
  factory _$$CompleteAttendanceSessionEventImplCopyWith(
    _$CompleteAttendanceSessionEventImpl value,
    $Res Function(_$CompleteAttendanceSessionEventImpl) then,
  ) = __$$CompleteAttendanceSessionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteAttendanceSessionEventImplCopyWithImpl<$Res>
    extends
        _$CompleteAttendanceSessionEventCopyWithImpl<
          $Res,
          _$CompleteAttendanceSessionEventImpl
        >
    implements _$$CompleteAttendanceSessionEventImplCopyWith<$Res> {
  __$$CompleteAttendanceSessionEventImplCopyWithImpl(
    _$CompleteAttendanceSessionEventImpl _value,
    $Res Function(_$CompleteAttendanceSessionEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompleteAttendanceSessionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompleteAttendanceSessionEventImpl
    implements _CompleteAttendanceSessionEvent {
  const _$CompleteAttendanceSessionEventImpl();

  @override
  String toString() {
    return 'CompleteAttendanceSessionEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteAttendanceSessionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _CompleteAttendanceSessionEvent
    implements CompleteAttendanceSessionEvent {
  const factory _CompleteAttendanceSessionEvent() =
      _$CompleteAttendanceSessionEventImpl;
}

/// @nodoc
mixin _$UpdateDailyAttendanceEvent {}

/// @nodoc
abstract class $UpdateDailyAttendanceEventCopyWith<$Res> {
  factory $UpdateDailyAttendanceEventCopyWith(
    UpdateDailyAttendanceEvent value,
    $Res Function(UpdateDailyAttendanceEvent) then,
  ) =
      _$UpdateDailyAttendanceEventCopyWithImpl<
        $Res,
        UpdateDailyAttendanceEvent
      >;
}

/// @nodoc
class _$UpdateDailyAttendanceEventCopyWithImpl<
  $Res,
  $Val extends UpdateDailyAttendanceEvent
>
    implements $UpdateDailyAttendanceEventCopyWith<$Res> {
  _$UpdateDailyAttendanceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateDailyAttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateDailyAttendanceEventImplCopyWith<$Res> {
  factory _$$UpdateDailyAttendanceEventImplCopyWith(
    _$UpdateDailyAttendanceEventImpl value,
    $Res Function(_$UpdateDailyAttendanceEventImpl) then,
  ) = __$$UpdateDailyAttendanceEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateDailyAttendanceEventImplCopyWithImpl<$Res>
    extends
        _$UpdateDailyAttendanceEventCopyWithImpl<
          $Res,
          _$UpdateDailyAttendanceEventImpl
        >
    implements _$$UpdateDailyAttendanceEventImplCopyWith<$Res> {
  __$$UpdateDailyAttendanceEventImplCopyWithImpl(
    _$UpdateDailyAttendanceEventImpl _value,
    $Res Function(_$UpdateDailyAttendanceEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateDailyAttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateDailyAttendanceEventImpl implements _UpdateDailyAttendanceEvent {
  const _$UpdateDailyAttendanceEventImpl();

  @override
  String toString() {
    return 'UpdateDailyAttendanceEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDailyAttendanceEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _UpdateDailyAttendanceEvent
    implements UpdateDailyAttendanceEvent {
  const factory _UpdateDailyAttendanceEvent() =
      _$UpdateDailyAttendanceEventImpl;
}

/// @nodoc
mixin _$CompleteCheckOutSessionEvent {}

/// @nodoc
abstract class $CompleteCheckOutSessionEventCopyWith<$Res> {
  factory $CompleteCheckOutSessionEventCopyWith(
    CompleteCheckOutSessionEvent value,
    $Res Function(CompleteCheckOutSessionEvent) then,
  ) =
      _$CompleteCheckOutSessionEventCopyWithImpl<
        $Res,
        CompleteCheckOutSessionEvent
      >;
}

/// @nodoc
class _$CompleteCheckOutSessionEventCopyWithImpl<
  $Res,
  $Val extends CompleteCheckOutSessionEvent
>
    implements $CompleteCheckOutSessionEventCopyWith<$Res> {
  _$CompleteCheckOutSessionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompleteCheckOutSessionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CompleteCheckOutSessionEventImplCopyWith<$Res> {
  factory _$$CompleteCheckOutSessionEventImplCopyWith(
    _$CompleteCheckOutSessionEventImpl value,
    $Res Function(_$CompleteCheckOutSessionEventImpl) then,
  ) = __$$CompleteCheckOutSessionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteCheckOutSessionEventImplCopyWithImpl<$Res>
    extends
        _$CompleteCheckOutSessionEventCopyWithImpl<
          $Res,
          _$CompleteCheckOutSessionEventImpl
        >
    implements _$$CompleteCheckOutSessionEventImplCopyWith<$Res> {
  __$$CompleteCheckOutSessionEventImplCopyWithImpl(
    _$CompleteCheckOutSessionEventImpl _value,
    $Res Function(_$CompleteCheckOutSessionEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompleteCheckOutSessionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompleteCheckOutSessionEventImpl
    implements _CompleteCheckOutSessionEvent {
  const _$CompleteCheckOutSessionEventImpl();

  @override
  String toString() {
    return 'CompleteCheckOutSessionEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteCheckOutSessionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _CompleteCheckOutSessionEvent
    implements CompleteCheckOutSessionEvent {
  const factory _CompleteCheckOutSessionEvent() =
      _$CompleteCheckOutSessionEventImpl;
}

/// @nodoc
mixin _$MarkStudentCheckOutEvent {
  String get studentId => throw _privateConstructorUsedError;

  /// Create a copy of MarkStudentCheckOutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarkStudentCheckOutEventCopyWith<MarkStudentCheckOutEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkStudentCheckOutEventCopyWith<$Res> {
  factory $MarkStudentCheckOutEventCopyWith(
    MarkStudentCheckOutEvent value,
    $Res Function(MarkStudentCheckOutEvent) then,
  ) = _$MarkStudentCheckOutEventCopyWithImpl<$Res, MarkStudentCheckOutEvent>;
  @useResult
  $Res call({String studentId});
}

/// @nodoc
class _$MarkStudentCheckOutEventCopyWithImpl<
  $Res,
  $Val extends MarkStudentCheckOutEvent
>
    implements $MarkStudentCheckOutEventCopyWith<$Res> {
  _$MarkStudentCheckOutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarkStudentCheckOutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? studentId = null}) {
    return _then(
      _value.copyWith(
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MarkStudentCheckOutEventImplCopyWith<$Res>
    implements $MarkStudentCheckOutEventCopyWith<$Res> {
  factory _$$MarkStudentCheckOutEventImplCopyWith(
    _$MarkStudentCheckOutEventImpl value,
    $Res Function(_$MarkStudentCheckOutEventImpl) then,
  ) = __$$MarkStudentCheckOutEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studentId});
}

/// @nodoc
class __$$MarkStudentCheckOutEventImplCopyWithImpl<$Res>
    extends
        _$MarkStudentCheckOutEventCopyWithImpl<
          $Res,
          _$MarkStudentCheckOutEventImpl
        >
    implements _$$MarkStudentCheckOutEventImplCopyWith<$Res> {
  __$$MarkStudentCheckOutEventImplCopyWithImpl(
    _$MarkStudentCheckOutEventImpl _value,
    $Res Function(_$MarkStudentCheckOutEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MarkStudentCheckOutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? studentId = null}) {
    return _then(
      _$MarkStudentCheckOutEventImpl(
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$MarkStudentCheckOutEventImpl implements _MarkStudentCheckOutEvent {
  const _$MarkStudentCheckOutEventImpl({required this.studentId});

  @override
  final String studentId;

  @override
  String toString() {
    return 'MarkStudentCheckOutEvent(studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkStudentCheckOutEventImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentId);

  /// Create a copy of MarkStudentCheckOutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkStudentCheckOutEventImplCopyWith<_$MarkStudentCheckOutEventImpl>
  get copyWith =>
      __$$MarkStudentCheckOutEventImplCopyWithImpl<
        _$MarkStudentCheckOutEventImpl
      >(this, _$identity);
}

abstract class _MarkStudentCheckOutEvent implements MarkStudentCheckOutEvent {
  const factory _MarkStudentCheckOutEvent({required final String studentId}) =
      _$MarkStudentCheckOutEventImpl;

  @override
  String get studentId;

  /// Create a copy of MarkStudentCheckOutEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkStudentCheckOutEventImplCopyWith<_$MarkStudentCheckOutEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitLeaveDecisionEvent {
  String get requestId => throw _privateConstructorUsedError;
  bool get isApproved => throw _privateConstructorUsedError;
  bool get confirmPresentOverride => throw _privateConstructorUsedError;

  /// Create a copy of SubmitLeaveDecisionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitLeaveDecisionEventCopyWith<SubmitLeaveDecisionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitLeaveDecisionEventCopyWith<$Res> {
  factory $SubmitLeaveDecisionEventCopyWith(
    SubmitLeaveDecisionEvent value,
    $Res Function(SubmitLeaveDecisionEvent) then,
  ) = _$SubmitLeaveDecisionEventCopyWithImpl<$Res, SubmitLeaveDecisionEvent>;
  @useResult
  $Res call({String requestId, bool isApproved, bool confirmPresentOverride});
}

/// @nodoc
class _$SubmitLeaveDecisionEventCopyWithImpl<
  $Res,
  $Val extends SubmitLeaveDecisionEvent
>
    implements $SubmitLeaveDecisionEventCopyWith<$Res> {
  _$SubmitLeaveDecisionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitLeaveDecisionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? isApproved = null,
    Object? confirmPresentOverride = null,
  }) {
    return _then(
      _value.copyWith(
            requestId: null == requestId
                ? _value.requestId
                : requestId // ignore: cast_nullable_to_non_nullable
                      as String,
            isApproved: null == isApproved
                ? _value.isApproved
                : isApproved // ignore: cast_nullable_to_non_nullable
                      as bool,
            confirmPresentOverride: null == confirmPresentOverride
                ? _value.confirmPresentOverride
                : confirmPresentOverride // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubmitLeaveDecisionEventImplCopyWith<$Res>
    implements $SubmitLeaveDecisionEventCopyWith<$Res> {
  factory _$$SubmitLeaveDecisionEventImplCopyWith(
    _$SubmitLeaveDecisionEventImpl value,
    $Res Function(_$SubmitLeaveDecisionEventImpl) then,
  ) = __$$SubmitLeaveDecisionEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String requestId, bool isApproved, bool confirmPresentOverride});
}

/// @nodoc
class __$$SubmitLeaveDecisionEventImplCopyWithImpl<$Res>
    extends
        _$SubmitLeaveDecisionEventCopyWithImpl<
          $Res,
          _$SubmitLeaveDecisionEventImpl
        >
    implements _$$SubmitLeaveDecisionEventImplCopyWith<$Res> {
  __$$SubmitLeaveDecisionEventImplCopyWithImpl(
    _$SubmitLeaveDecisionEventImpl _value,
    $Res Function(_$SubmitLeaveDecisionEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitLeaveDecisionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? isApproved = null,
    Object? confirmPresentOverride = null,
  }) {
    return _then(
      _$SubmitLeaveDecisionEventImpl(
        requestId: null == requestId
            ? _value.requestId
            : requestId // ignore: cast_nullable_to_non_nullable
                  as String,
        isApproved: null == isApproved
            ? _value.isApproved
            : isApproved // ignore: cast_nullable_to_non_nullable
                  as bool,
        confirmPresentOverride: null == confirmPresentOverride
            ? _value.confirmPresentOverride
            : confirmPresentOverride // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SubmitLeaveDecisionEventImpl implements _SubmitLeaveDecisionEvent {
  const _$SubmitLeaveDecisionEventImpl({
    required this.requestId,
    required this.isApproved,
    this.confirmPresentOverride = false,
  });

  @override
  final String requestId;
  @override
  final bool isApproved;
  @override
  @JsonKey()
  final bool confirmPresentOverride;

  @override
  String toString() {
    return 'SubmitLeaveDecisionEvent(requestId: $requestId, isApproved: $isApproved, confirmPresentOverride: $confirmPresentOverride)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitLeaveDecisionEventImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.confirmPresentOverride, confirmPresentOverride) ||
                other.confirmPresentOverride == confirmPresentOverride));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, requestId, isApproved, confirmPresentOverride);

  /// Create a copy of SubmitLeaveDecisionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitLeaveDecisionEventImplCopyWith<_$SubmitLeaveDecisionEventImpl>
  get copyWith =>
      __$$SubmitLeaveDecisionEventImplCopyWithImpl<
        _$SubmitLeaveDecisionEventImpl
      >(this, _$identity);
}

abstract class _SubmitLeaveDecisionEvent implements SubmitLeaveDecisionEvent {
  const factory _SubmitLeaveDecisionEvent({
    required final String requestId,
    required final bool isApproved,
    final bool confirmPresentOverride,
  }) = _$SubmitLeaveDecisionEventImpl;

  @override
  String get requestId;
  @override
  bool get isApproved;
  @override
  bool get confirmPresentOverride;

  /// Create a copy of SubmitLeaveDecisionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitLeaveDecisionEventImplCopyWith<_$SubmitLeaveDecisionEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LeaveRequestsUpdatedEvent {
  List<LeaveRequest> get leaveRequests => throw _privateConstructorUsedError;

  /// Create a copy of LeaveRequestsUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveRequestsUpdatedEventCopyWith<LeaveRequestsUpdatedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveRequestsUpdatedEventCopyWith<$Res> {
  factory $LeaveRequestsUpdatedEventCopyWith(
    LeaveRequestsUpdatedEvent value,
    $Res Function(LeaveRequestsUpdatedEvent) then,
  ) = _$LeaveRequestsUpdatedEventCopyWithImpl<$Res, LeaveRequestsUpdatedEvent>;
  @useResult
  $Res call({List<LeaveRequest> leaveRequests});
}

/// @nodoc
class _$LeaveRequestsUpdatedEventCopyWithImpl<
  $Res,
  $Val extends LeaveRequestsUpdatedEvent
>
    implements $LeaveRequestsUpdatedEventCopyWith<$Res> {
  _$LeaveRequestsUpdatedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveRequestsUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? leaveRequests = null}) {
    return _then(
      _value.copyWith(
            leaveRequests: null == leaveRequests
                ? _value.leaveRequests
                : leaveRequests // ignore: cast_nullable_to_non_nullable
                      as List<LeaveRequest>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeaveRequestsUpdatedEventImplCopyWith<$Res>
    implements $LeaveRequestsUpdatedEventCopyWith<$Res> {
  factory _$$LeaveRequestsUpdatedEventImplCopyWith(
    _$LeaveRequestsUpdatedEventImpl value,
    $Res Function(_$LeaveRequestsUpdatedEventImpl) then,
  ) = __$$LeaveRequestsUpdatedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LeaveRequest> leaveRequests});
}

/// @nodoc
class __$$LeaveRequestsUpdatedEventImplCopyWithImpl<$Res>
    extends
        _$LeaveRequestsUpdatedEventCopyWithImpl<
          $Res,
          _$LeaveRequestsUpdatedEventImpl
        >
    implements _$$LeaveRequestsUpdatedEventImplCopyWith<$Res> {
  __$$LeaveRequestsUpdatedEventImplCopyWithImpl(
    _$LeaveRequestsUpdatedEventImpl _value,
    $Res Function(_$LeaveRequestsUpdatedEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeaveRequestsUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? leaveRequests = null}) {
    return _then(
      _$LeaveRequestsUpdatedEventImpl(
        null == leaveRequests
            ? _value._leaveRequests
            : leaveRequests // ignore: cast_nullable_to_non_nullable
                  as List<LeaveRequest>,
      ),
    );
  }
}

/// @nodoc

class _$LeaveRequestsUpdatedEventImpl implements _LeaveRequestsUpdatedEvent {
  const _$LeaveRequestsUpdatedEventImpl(final List<LeaveRequest> leaveRequests)
    : _leaveRequests = leaveRequests;

  final List<LeaveRequest> _leaveRequests;
  @override
  List<LeaveRequest> get leaveRequests {
    if (_leaveRequests is EqualUnmodifiableListView) return _leaveRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaveRequests);
  }

  @override
  String toString() {
    return 'LeaveRequestsUpdatedEvent(leaveRequests: $leaveRequests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveRequestsUpdatedEventImpl &&
            const DeepCollectionEquality().equals(
              other._leaveRequests,
              _leaveRequests,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_leaveRequests),
  );

  /// Create a copy of LeaveRequestsUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveRequestsUpdatedEventImplCopyWith<_$LeaveRequestsUpdatedEventImpl>
  get copyWith =>
      __$$LeaveRequestsUpdatedEventImplCopyWithImpl<
        _$LeaveRequestsUpdatedEventImpl
      >(this, _$identity);
}

abstract class _LeaveRequestsUpdatedEvent implements LeaveRequestsUpdatedEvent {
  const factory _LeaveRequestsUpdatedEvent(
    final List<LeaveRequest> leaveRequests,
  ) = _$LeaveRequestsUpdatedEventImpl;

  @override
  List<LeaveRequest> get leaveRequests;

  /// Create a copy of LeaveRequestsUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveRequestsUpdatedEventImplCopyWith<_$LeaveRequestsUpdatedEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttendanceState {
  String get classId => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  List<Student> get students => throw _privateConstructorUsedError;
  List<Attendance> get attendances => throw _privateConstructorUsedError;
  List<LeaveRequest> get leaveRequests => throw _privateConstructorUsedError;
  AttendanceSession? get session => throw _privateConstructorUsedError;
  String get onPageError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get hasUnsavedChanges => throw _privateConstructorUsedError;
  DateTime? get historyDate => throw _privateConstructorUsedError;
  List<Student> get historyStudents => throw _privateConstructorUsedError;
  List<Attendance> get historyAttendances => throw _privateConstructorUsedError;
  AttendanceSession? get historySession => throw _privateConstructorUsedError;
  bool get isHistoryLoading => throw _privateConstructorUsedError;
  String get historyError => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceStateCopyWith<AttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStateCopyWith<$Res> {
  factory $AttendanceStateCopyWith(
    AttendanceState value,
    $Res Function(AttendanceState) then,
  ) = _$AttendanceStateCopyWithImpl<$Res, AttendanceState>;
  @useResult
  $Res call({
    String classId,
    DateTime? selectedDate,
    List<Student> students,
    List<Attendance> attendances,
    List<LeaveRequest> leaveRequests,
    AttendanceSession? session,
    String onPageError,
    bool isLoading,
    bool isSaving,
    bool hasUnsavedChanges,
    DateTime? historyDate,
    List<Student> historyStudents,
    List<Attendance> historyAttendances,
    AttendanceSession? historySession,
    bool isHistoryLoading,
    String historyError,
  });

  $AttendanceSessionCopyWith<$Res>? get session;
  $AttendanceSessionCopyWith<$Res>? get historySession;
}

/// @nodoc
class _$AttendanceStateCopyWithImpl<$Res, $Val extends AttendanceState>
    implements $AttendanceStateCopyWith<$Res> {
  _$AttendanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? selectedDate = freezed,
    Object? students = null,
    Object? attendances = null,
    Object? leaveRequests = null,
    Object? session = freezed,
    Object? onPageError = null,
    Object? isLoading = null,
    Object? isSaving = null,
    Object? hasUnsavedChanges = null,
    Object? historyDate = freezed,
    Object? historyStudents = null,
    Object? historyAttendances = null,
    Object? historySession = freezed,
    Object? isHistoryLoading = null,
    Object? historyError = null,
  }) {
    return _then(
      _value.copyWith(
            classId: null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String,
            selectedDate: freezed == selectedDate
                ? _value.selectedDate
                : selectedDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
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
            onPageError: null == onPageError
                ? _value.onPageError
                : onPageError // ignore: cast_nullable_to_non_nullable
                      as String,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            isSaving: null == isSaving
                ? _value.isSaving
                : isSaving // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasUnsavedChanges: null == hasUnsavedChanges
                ? _value.hasUnsavedChanges
                : hasUnsavedChanges // ignore: cast_nullable_to_non_nullable
                      as bool,
            historyDate: freezed == historyDate
                ? _value.historyDate
                : historyDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            historyStudents: null == historyStudents
                ? _value.historyStudents
                : historyStudents // ignore: cast_nullable_to_non_nullable
                      as List<Student>,
            historyAttendances: null == historyAttendances
                ? _value.historyAttendances
                : historyAttendances // ignore: cast_nullable_to_non_nullable
                      as List<Attendance>,
            historySession: freezed == historySession
                ? _value.historySession
                : historySession // ignore: cast_nullable_to_non_nullable
                      as AttendanceSession?,
            isHistoryLoading: null == isHistoryLoading
                ? _value.isHistoryLoading
                : isHistoryLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            historyError: null == historyError
                ? _value.historyError
                : historyError // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of AttendanceState
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

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceSessionCopyWith<$Res>? get historySession {
    if (_value.historySession == null) {
      return null;
    }

    return $AttendanceSessionCopyWith<$Res>(_value.historySession!, (value) {
      return _then(_value.copyWith(historySession: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceStateImplCopyWith<$Res>
    implements $AttendanceStateCopyWith<$Res> {
  factory _$$AttendanceStateImplCopyWith(
    _$AttendanceStateImpl value,
    $Res Function(_$AttendanceStateImpl) then,
  ) = __$$AttendanceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String classId,
    DateTime? selectedDate,
    List<Student> students,
    List<Attendance> attendances,
    List<LeaveRequest> leaveRequests,
    AttendanceSession? session,
    String onPageError,
    bool isLoading,
    bool isSaving,
    bool hasUnsavedChanges,
    DateTime? historyDate,
    List<Student> historyStudents,
    List<Attendance> historyAttendances,
    AttendanceSession? historySession,
    bool isHistoryLoading,
    String historyError,
  });

  @override
  $AttendanceSessionCopyWith<$Res>? get session;
  @override
  $AttendanceSessionCopyWith<$Res>? get historySession;
}

/// @nodoc
class __$$AttendanceStateImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$AttendanceStateImpl>
    implements _$$AttendanceStateImplCopyWith<$Res> {
  __$$AttendanceStateImplCopyWithImpl(
    _$AttendanceStateImpl _value,
    $Res Function(_$AttendanceStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? selectedDate = freezed,
    Object? students = null,
    Object? attendances = null,
    Object? leaveRequests = null,
    Object? session = freezed,
    Object? onPageError = null,
    Object? isLoading = null,
    Object? isSaving = null,
    Object? hasUnsavedChanges = null,
    Object? historyDate = freezed,
    Object? historyStudents = null,
    Object? historyAttendances = null,
    Object? historySession = freezed,
    Object? isHistoryLoading = null,
    Object? historyError = null,
  }) {
    return _then(
      _$AttendanceStateImpl(
        classId: null == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String,
        selectedDate: freezed == selectedDate
            ? _value.selectedDate
            : selectedDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
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
        onPageError: null == onPageError
            ? _value.onPageError
            : onPageError // ignore: cast_nullable_to_non_nullable
                  as String,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        isSaving: null == isSaving
            ? _value.isSaving
            : isSaving // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasUnsavedChanges: null == hasUnsavedChanges
            ? _value.hasUnsavedChanges
            : hasUnsavedChanges // ignore: cast_nullable_to_non_nullable
                  as bool,
        historyDate: freezed == historyDate
            ? _value.historyDate
            : historyDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        historyStudents: null == historyStudents
            ? _value._historyStudents
            : historyStudents // ignore: cast_nullable_to_non_nullable
                  as List<Student>,
        historyAttendances: null == historyAttendances
            ? _value._historyAttendances
            : historyAttendances // ignore: cast_nullable_to_non_nullable
                  as List<Attendance>,
        historySession: freezed == historySession
            ? _value.historySession
            : historySession // ignore: cast_nullable_to_non_nullable
                  as AttendanceSession?,
        isHistoryLoading: null == isHistoryLoading
            ? _value.isHistoryLoading
            : isHistoryLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        historyError: null == historyError
            ? _value.historyError
            : historyError // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$AttendanceStateImpl implements _AttendanceState {
  const _$AttendanceStateImpl({
    this.classId = '',
    this.selectedDate,
    final List<Student> students = const [],
    final List<Attendance> attendances = const [],
    final List<LeaveRequest> leaveRequests = const [],
    this.session,
    this.onPageError = '',
    this.isLoading = false,
    this.isSaving = false,
    this.hasUnsavedChanges = false,
    this.historyDate,
    final List<Student> historyStudents = const [],
    final List<Attendance> historyAttendances = const [],
    this.historySession,
    this.isHistoryLoading = false,
    this.historyError = '',
  }) : _students = students,
       _attendances = attendances,
       _leaveRequests = leaveRequests,
       _historyStudents = historyStudents,
       _historyAttendances = historyAttendances;

  @override
  @JsonKey()
  final String classId;
  @override
  final DateTime? selectedDate;
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
  @JsonKey()
  final String onPageError;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSaving;
  @override
  @JsonKey()
  final bool hasUnsavedChanges;
  @override
  final DateTime? historyDate;
  final List<Student> _historyStudents;
  @override
  @JsonKey()
  List<Student> get historyStudents {
    if (_historyStudents is EqualUnmodifiableListView) return _historyStudents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyStudents);
  }

  final List<Attendance> _historyAttendances;
  @override
  @JsonKey()
  List<Attendance> get historyAttendances {
    if (_historyAttendances is EqualUnmodifiableListView)
      return _historyAttendances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyAttendances);
  }

  @override
  final AttendanceSession? historySession;
  @override
  @JsonKey()
  final bool isHistoryLoading;
  @override
  @JsonKey()
  final String historyError;

  @override
  String toString() {
    return 'AttendanceState(classId: $classId, selectedDate: $selectedDate, students: $students, attendances: $attendances, leaveRequests: $leaveRequests, session: $session, onPageError: $onPageError, isLoading: $isLoading, isSaving: $isSaving, hasUnsavedChanges: $hasUnsavedChanges, historyDate: $historyDate, historyStudents: $historyStudents, historyAttendances: $historyAttendances, historySession: $historySession, isHistoryLoading: $isHistoryLoading, historyError: $historyError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStateImpl &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            const DeepCollectionEquality().equals(other._students, _students) &&
            const DeepCollectionEquality().equals(
              other._attendances,
              _attendances,
            ) &&
            const DeepCollectionEquality().equals(
              other._leaveRequests,
              _leaveRequests,
            ) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.onPageError, onPageError) ||
                other.onPageError == onPageError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.hasUnsavedChanges, hasUnsavedChanges) ||
                other.hasUnsavedChanges == hasUnsavedChanges) &&
            (identical(other.historyDate, historyDate) ||
                other.historyDate == historyDate) &&
            const DeepCollectionEquality().equals(
              other._historyStudents,
              _historyStudents,
            ) &&
            const DeepCollectionEquality().equals(
              other._historyAttendances,
              _historyAttendances,
            ) &&
            (identical(other.historySession, historySession) ||
                other.historySession == historySession) &&
            (identical(other.isHistoryLoading, isHistoryLoading) ||
                other.isHistoryLoading == isHistoryLoading) &&
            (identical(other.historyError, historyError) ||
                other.historyError == historyError));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    classId,
    selectedDate,
    const DeepCollectionEquality().hash(_students),
    const DeepCollectionEquality().hash(_attendances),
    const DeepCollectionEquality().hash(_leaveRequests),
    session,
    onPageError,
    isLoading,
    isSaving,
    hasUnsavedChanges,
    historyDate,
    const DeepCollectionEquality().hash(_historyStudents),
    const DeepCollectionEquality().hash(_historyAttendances),
    historySession,
    isHistoryLoading,
    historyError,
  );

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStateImplCopyWith<_$AttendanceStateImpl> get copyWith =>
      __$$AttendanceStateImplCopyWithImpl<_$AttendanceStateImpl>(
        this,
        _$identity,
      );
}

abstract class _AttendanceState implements AttendanceState {
  const factory _AttendanceState({
    final String classId,
    final DateTime? selectedDate,
    final List<Student> students,
    final List<Attendance> attendances,
    final List<LeaveRequest> leaveRequests,
    final AttendanceSession? session,
    final String onPageError,
    final bool isLoading,
    final bool isSaving,
    final bool hasUnsavedChanges,
    final DateTime? historyDate,
    final List<Student> historyStudents,
    final List<Attendance> historyAttendances,
    final AttendanceSession? historySession,
    final bool isHistoryLoading,
    final String historyError,
  }) = _$AttendanceStateImpl;

  @override
  String get classId;
  @override
  DateTime? get selectedDate;
  @override
  List<Student> get students;
  @override
  List<Attendance> get attendances;
  @override
  List<LeaveRequest> get leaveRequests;
  @override
  AttendanceSession? get session;
  @override
  String get onPageError;
  @override
  bool get isLoading;
  @override
  bool get isSaving;
  @override
  bool get hasUnsavedChanges;
  @override
  DateTime? get historyDate;
  @override
  List<Student> get historyStudents;
  @override
  List<Attendance> get historyAttendances;
  @override
  AttendanceSession? get historySession;
  @override
  bool get isHistoryLoading;
  @override
  String get historyError;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceStateImplCopyWith<_$AttendanceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
