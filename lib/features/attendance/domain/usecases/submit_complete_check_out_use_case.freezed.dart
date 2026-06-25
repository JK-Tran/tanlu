// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_complete_check_out_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitCompleteCheckOutInput {
  AttendanceSession get session => throw _privateConstructorUsedError;
  List<Attendance> get attendances => throw _privateConstructorUsedError;

  /// Create a copy of SubmitCompleteCheckOutInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitCompleteCheckOutInputCopyWith<SubmitCompleteCheckOutInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitCompleteCheckOutInputCopyWith<$Res> {
  factory $SubmitCompleteCheckOutInputCopyWith(
    SubmitCompleteCheckOutInput value,
    $Res Function(SubmitCompleteCheckOutInput) then,
  ) =
      _$SubmitCompleteCheckOutInputCopyWithImpl<
        $Res,
        SubmitCompleteCheckOutInput
      >;
  @useResult
  $Res call({AttendanceSession session, List<Attendance> attendances});

  $AttendanceSessionCopyWith<$Res> get session;
}

/// @nodoc
class _$SubmitCompleteCheckOutInputCopyWithImpl<
  $Res,
  $Val extends SubmitCompleteCheckOutInput
>
    implements $SubmitCompleteCheckOutInputCopyWith<$Res> {
  _$SubmitCompleteCheckOutInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitCompleteCheckOutInput
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

  /// Create a copy of SubmitCompleteCheckOutInput
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
abstract class _$$SubmitCompleteCheckOutInputImplCopyWith<$Res>
    implements $SubmitCompleteCheckOutInputCopyWith<$Res> {
  factory _$$SubmitCompleteCheckOutInputImplCopyWith(
    _$SubmitCompleteCheckOutInputImpl value,
    $Res Function(_$SubmitCompleteCheckOutInputImpl) then,
  ) = __$$SubmitCompleteCheckOutInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AttendanceSession session, List<Attendance> attendances});

  @override
  $AttendanceSessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$SubmitCompleteCheckOutInputImplCopyWithImpl<$Res>
    extends
        _$SubmitCompleteCheckOutInputCopyWithImpl<
          $Res,
          _$SubmitCompleteCheckOutInputImpl
        >
    implements _$$SubmitCompleteCheckOutInputImplCopyWith<$Res> {
  __$$SubmitCompleteCheckOutInputImplCopyWithImpl(
    _$SubmitCompleteCheckOutInputImpl _value,
    $Res Function(_$SubmitCompleteCheckOutInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitCompleteCheckOutInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? session = null, Object? attendances = null}) {
    return _then(
      _$SubmitCompleteCheckOutInputImpl(
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

class _$SubmitCompleteCheckOutInputImpl
    with DiagnosticableTreeMixin
    implements _SubmitCompleteCheckOutInput {
  const _$SubmitCompleteCheckOutInputImpl({
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
    return 'SubmitCompleteCheckOutInput(session: $session, attendances: $attendances)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitCompleteCheckOutInput'))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('attendances', attendances));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitCompleteCheckOutInputImpl &&
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

  /// Create a copy of SubmitCompleteCheckOutInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitCompleteCheckOutInputImplCopyWith<_$SubmitCompleteCheckOutInputImpl>
  get copyWith =>
      __$$SubmitCompleteCheckOutInputImplCopyWithImpl<
        _$SubmitCompleteCheckOutInputImpl
      >(this, _$identity);
}

abstract class _SubmitCompleteCheckOutInput
    implements SubmitCompleteCheckOutInput {
  const factory _SubmitCompleteCheckOutInput({
    required final AttendanceSession session,
    required final List<Attendance> attendances,
  }) = _$SubmitCompleteCheckOutInputImpl;

  @override
  AttendanceSession get session;
  @override
  List<Attendance> get attendances;

  /// Create a copy of SubmitCompleteCheckOutInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitCompleteCheckOutInputImplCopyWith<_$SubmitCompleteCheckOutInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitCompleteCheckOutOutput {}

/// @nodoc
abstract class $SubmitCompleteCheckOutOutputCopyWith<$Res> {
  factory $SubmitCompleteCheckOutOutputCopyWith(
    SubmitCompleteCheckOutOutput value,
    $Res Function(SubmitCompleteCheckOutOutput) then,
  ) =
      _$SubmitCompleteCheckOutOutputCopyWithImpl<
        $Res,
        SubmitCompleteCheckOutOutput
      >;
}

/// @nodoc
class _$SubmitCompleteCheckOutOutputCopyWithImpl<
  $Res,
  $Val extends SubmitCompleteCheckOutOutput
>
    implements $SubmitCompleteCheckOutOutputCopyWith<$Res> {
  _$SubmitCompleteCheckOutOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitCompleteCheckOutOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SubmitCompleteCheckOutOutputImplCopyWith<$Res> {
  factory _$$SubmitCompleteCheckOutOutputImplCopyWith(
    _$SubmitCompleteCheckOutOutputImpl value,
    $Res Function(_$SubmitCompleteCheckOutOutputImpl) then,
  ) = __$$SubmitCompleteCheckOutOutputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitCompleteCheckOutOutputImplCopyWithImpl<$Res>
    extends
        _$SubmitCompleteCheckOutOutputCopyWithImpl<
          $Res,
          _$SubmitCompleteCheckOutOutputImpl
        >
    implements _$$SubmitCompleteCheckOutOutputImplCopyWith<$Res> {
  __$$SubmitCompleteCheckOutOutputImplCopyWithImpl(
    _$SubmitCompleteCheckOutOutputImpl _value,
    $Res Function(_$SubmitCompleteCheckOutOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitCompleteCheckOutOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitCompleteCheckOutOutputImpl extends _SubmitCompleteCheckOutOutput
    with DiagnosticableTreeMixin {
  const _$SubmitCompleteCheckOutOutputImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitCompleteCheckOutOutput()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitCompleteCheckOutOutput'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitCompleteCheckOutOutputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SubmitCompleteCheckOutOutput
    extends SubmitCompleteCheckOutOutput {
  const factory _SubmitCompleteCheckOutOutput() =
      _$SubmitCompleteCheckOutOutputImpl;
  const _SubmitCompleteCheckOutOutput._() : super._();
}
