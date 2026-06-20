// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_daily_attendance_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitDailyAttendanceInput {
  AttendanceSession get session => throw _privateConstructorUsedError;
  List<Attendance> get attendances => throw _privateConstructorUsedError;

  /// Create a copy of SubmitDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitDailyAttendanceInputCopyWith<SubmitDailyAttendanceInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitDailyAttendanceInputCopyWith<$Res> {
  factory $SubmitDailyAttendanceInputCopyWith(
    SubmitDailyAttendanceInput value,
    $Res Function(SubmitDailyAttendanceInput) then,
  ) =
      _$SubmitDailyAttendanceInputCopyWithImpl<
        $Res,
        SubmitDailyAttendanceInput
      >;
  @useResult
  $Res call({AttendanceSession session, List<Attendance> attendances});

  $AttendanceSessionCopyWith<$Res> get session;
}

/// @nodoc
class _$SubmitDailyAttendanceInputCopyWithImpl<
  $Res,
  $Val extends SubmitDailyAttendanceInput
>
    implements $SubmitDailyAttendanceInputCopyWith<$Res> {
  _$SubmitDailyAttendanceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitDailyAttendanceInput
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

  /// Create a copy of SubmitDailyAttendanceInput
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
abstract class _$$SubmitDailyAttendanceInputImplCopyWith<$Res>
    implements $SubmitDailyAttendanceInputCopyWith<$Res> {
  factory _$$SubmitDailyAttendanceInputImplCopyWith(
    _$SubmitDailyAttendanceInputImpl value,
    $Res Function(_$SubmitDailyAttendanceInputImpl) then,
  ) = __$$SubmitDailyAttendanceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AttendanceSession session, List<Attendance> attendances});

  @override
  $AttendanceSessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$SubmitDailyAttendanceInputImplCopyWithImpl<$Res>
    extends
        _$SubmitDailyAttendanceInputCopyWithImpl<
          $Res,
          _$SubmitDailyAttendanceInputImpl
        >
    implements _$$SubmitDailyAttendanceInputImplCopyWith<$Res> {
  __$$SubmitDailyAttendanceInputImplCopyWithImpl(
    _$SubmitDailyAttendanceInputImpl _value,
    $Res Function(_$SubmitDailyAttendanceInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? session = null, Object? attendances = null}) {
    return _then(
      _$SubmitDailyAttendanceInputImpl(
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

class _$SubmitDailyAttendanceInputImpl
    with DiagnosticableTreeMixin
    implements _SubmitDailyAttendanceInput {
  const _$SubmitDailyAttendanceInputImpl({
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
    return 'SubmitDailyAttendanceInput(session: $session, attendances: $attendances)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitDailyAttendanceInput'))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('attendances', attendances));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitDailyAttendanceInputImpl &&
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

  /// Create a copy of SubmitDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitDailyAttendanceInputImplCopyWith<_$SubmitDailyAttendanceInputImpl>
  get copyWith =>
      __$$SubmitDailyAttendanceInputImplCopyWithImpl<
        _$SubmitDailyAttendanceInputImpl
      >(this, _$identity);
}

abstract class _SubmitDailyAttendanceInput
    implements SubmitDailyAttendanceInput {
  const factory _SubmitDailyAttendanceInput({
    required final AttendanceSession session,
    required final List<Attendance> attendances,
  }) = _$SubmitDailyAttendanceInputImpl;

  @override
  AttendanceSession get session;
  @override
  List<Attendance> get attendances;

  /// Create a copy of SubmitDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitDailyAttendanceInputImplCopyWith<_$SubmitDailyAttendanceInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitDailyAttendanceOutput {}

/// @nodoc
abstract class $SubmitDailyAttendanceOutputCopyWith<$Res> {
  factory $SubmitDailyAttendanceOutputCopyWith(
    SubmitDailyAttendanceOutput value,
    $Res Function(SubmitDailyAttendanceOutput) then,
  ) =
      _$SubmitDailyAttendanceOutputCopyWithImpl<
        $Res,
        SubmitDailyAttendanceOutput
      >;
}

/// @nodoc
class _$SubmitDailyAttendanceOutputCopyWithImpl<
  $Res,
  $Val extends SubmitDailyAttendanceOutput
>
    implements $SubmitDailyAttendanceOutputCopyWith<$Res> {
  _$SubmitDailyAttendanceOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SubmitDailyAttendanceOutputImplCopyWith<$Res> {
  factory _$$SubmitDailyAttendanceOutputImplCopyWith(
    _$SubmitDailyAttendanceOutputImpl value,
    $Res Function(_$SubmitDailyAttendanceOutputImpl) then,
  ) = __$$SubmitDailyAttendanceOutputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitDailyAttendanceOutputImplCopyWithImpl<$Res>
    extends
        _$SubmitDailyAttendanceOutputCopyWithImpl<
          $Res,
          _$SubmitDailyAttendanceOutputImpl
        >
    implements _$$SubmitDailyAttendanceOutputImplCopyWith<$Res> {
  __$$SubmitDailyAttendanceOutputImplCopyWithImpl(
    _$SubmitDailyAttendanceOutputImpl _value,
    $Res Function(_$SubmitDailyAttendanceOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitDailyAttendanceOutputImpl extends _SubmitDailyAttendanceOutput
    with DiagnosticableTreeMixin {
  const _$SubmitDailyAttendanceOutputImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitDailyAttendanceOutput()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SubmitDailyAttendanceOutput'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitDailyAttendanceOutputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SubmitDailyAttendanceOutput
    extends SubmitDailyAttendanceOutput {
  const factory _SubmitDailyAttendanceOutput() =
      _$SubmitDailyAttendanceOutputImpl;
  const _SubmitDailyAttendanceOutput._() : super._();
}
