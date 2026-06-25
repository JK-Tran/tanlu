// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_daily_attendance_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UpdateDailyAttendanceInput {
  AttendanceSession get session => throw _privateConstructorUsedError;
  List<Attendance> get attendances => throw _privateConstructorUsedError;

  /// Create a copy of UpdateDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateDailyAttendanceInputCopyWith<UpdateDailyAttendanceInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDailyAttendanceInputCopyWith<$Res> {
  factory $UpdateDailyAttendanceInputCopyWith(
    UpdateDailyAttendanceInput value,
    $Res Function(UpdateDailyAttendanceInput) then,
  ) =
      _$UpdateDailyAttendanceInputCopyWithImpl<
        $Res,
        UpdateDailyAttendanceInput
      >;
  @useResult
  $Res call({AttendanceSession session, List<Attendance> attendances});

  $AttendanceSessionCopyWith<$Res> get session;
}

/// @nodoc
class _$UpdateDailyAttendanceInputCopyWithImpl<
  $Res,
  $Val extends UpdateDailyAttendanceInput
>
    implements $UpdateDailyAttendanceInputCopyWith<$Res> {
  _$UpdateDailyAttendanceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? session = null, Object? attendances = null}) {
    return _then(
      _value.copyWith(
            session: null == session
                ? _value.session
                : session // ignore: cast_nullable_to_non_nullable
                      as AttendanceSession,
            attendances: null == attendances
                ? _value.attendances
                : attendances // ignore: cast_nullable_to_non_nullable
                      as List<Attendance>,
          )
          as $Val,
    );
  }

  /// Create a copy of UpdateDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceSessionCopyWith<$Res> get session {
    return $AttendanceSessionCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateDailyAttendanceInputImplCopyWith<$Res>
    implements $UpdateDailyAttendanceInputCopyWith<$Res> {
  factory _$$UpdateDailyAttendanceInputImplCopyWith(
    _$UpdateDailyAttendanceInputImpl value,
    $Res Function(_$UpdateDailyAttendanceInputImpl) then,
  ) = __$$UpdateDailyAttendanceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AttendanceSession session, List<Attendance> attendances});

  @override
  $AttendanceSessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$UpdateDailyAttendanceInputImplCopyWithImpl<$Res>
    extends
        _$UpdateDailyAttendanceInputCopyWithImpl<
          $Res,
          _$UpdateDailyAttendanceInputImpl
        >
    implements _$$UpdateDailyAttendanceInputImplCopyWith<$Res> {
  __$$UpdateDailyAttendanceInputImplCopyWithImpl(
    _$UpdateDailyAttendanceInputImpl _value,
    $Res Function(_$UpdateDailyAttendanceInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? session = null, Object? attendances = null}) {
    return _then(
      _$UpdateDailyAttendanceInputImpl(
        session: null == session
            ? _value.session
            : session // ignore: cast_nullable_to_non_nullable
                  as AttendanceSession,
        attendances: null == attendances
            ? _value._attendances
            : attendances // ignore: cast_nullable_to_non_nullable
                  as List<Attendance>,
      ),
    );
  }
}

/// @nodoc

class _$UpdateDailyAttendanceInputImpl
    with DiagnosticableTreeMixin
    implements _UpdateDailyAttendanceInput {
  const _$UpdateDailyAttendanceInputImpl({
    required this.session,
    required final List<Attendance> attendances,
  }) : _attendances = attendances;

  @override
  final AttendanceSession session;
  final List<Attendance> _attendances;
  @override
  List<Attendance> get attendances {
    if (_attendances is EqualUnmodifiableListView) return _attendances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendances);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateDailyAttendanceInput(session: $session, attendances: $attendances)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateDailyAttendanceInput'))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('attendances', attendances));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDailyAttendanceInputImpl &&
            (identical(other.session, session) || other.session == session) &&
            const DeepCollectionEquality().equals(
              other._attendances,
              _attendances,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    session,
    const DeepCollectionEquality().hash(_attendances),
  );

  /// Create a copy of UpdateDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDailyAttendanceInputImplCopyWith<_$UpdateDailyAttendanceInputImpl>
  get copyWith =>
      __$$UpdateDailyAttendanceInputImplCopyWithImpl<
        _$UpdateDailyAttendanceInputImpl
      >(this, _$identity);
}

abstract class _UpdateDailyAttendanceInput
    implements UpdateDailyAttendanceInput {
  const factory _UpdateDailyAttendanceInput({
    required final AttendanceSession session,
    required final List<Attendance> attendances,
  }) = _$UpdateDailyAttendanceInputImpl;

  @override
  AttendanceSession get session;
  @override
  List<Attendance> get attendances;

  /// Create a copy of UpdateDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDailyAttendanceInputImplCopyWith<_$UpdateDailyAttendanceInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateDailyAttendanceOutput {}

/// @nodoc
abstract class $UpdateDailyAttendanceOutputCopyWith<$Res> {
  factory $UpdateDailyAttendanceOutputCopyWith(
    UpdateDailyAttendanceOutput value,
    $Res Function(UpdateDailyAttendanceOutput) then,
  ) =
      _$UpdateDailyAttendanceOutputCopyWithImpl<
        $Res,
        UpdateDailyAttendanceOutput
      >;
}

/// @nodoc
class _$UpdateDailyAttendanceOutputCopyWithImpl<
  $Res,
  $Val extends UpdateDailyAttendanceOutput
>
    implements $UpdateDailyAttendanceOutputCopyWith<$Res> {
  _$UpdateDailyAttendanceOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateDailyAttendanceOutputImplCopyWith<$Res> {
  factory _$$UpdateDailyAttendanceOutputImplCopyWith(
    _$UpdateDailyAttendanceOutputImpl value,
    $Res Function(_$UpdateDailyAttendanceOutputImpl) then,
  ) = __$$UpdateDailyAttendanceOutputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateDailyAttendanceOutputImplCopyWithImpl<$Res>
    extends
        _$UpdateDailyAttendanceOutputCopyWithImpl<
          $Res,
          _$UpdateDailyAttendanceOutputImpl
        >
    implements _$$UpdateDailyAttendanceOutputImplCopyWith<$Res> {
  __$$UpdateDailyAttendanceOutputImplCopyWithImpl(
    _$UpdateDailyAttendanceOutputImpl _value,
    $Res Function(_$UpdateDailyAttendanceOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateDailyAttendanceOutputImpl extends _UpdateDailyAttendanceOutput
    with DiagnosticableTreeMixin {
  const _$UpdateDailyAttendanceOutputImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateDailyAttendanceOutput()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'UpdateDailyAttendanceOutput'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDailyAttendanceOutputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _UpdateDailyAttendanceOutput
    extends UpdateDailyAttendanceOutput {
  const factory _UpdateDailyAttendanceOutput() =
      _$UpdateDailyAttendanceOutputImpl;
  const _UpdateDailyAttendanceOutput._() : super._();
}
