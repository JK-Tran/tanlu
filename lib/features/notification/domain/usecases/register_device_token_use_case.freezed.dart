// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_device_token_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RegisterDeviceTokenInput {
  String get userId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Create a copy of RegisterDeviceTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterDeviceTokenInputCopyWith<RegisterDeviceTokenInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDeviceTokenInputCopyWith<$Res> {
  factory $RegisterDeviceTokenInputCopyWith(
    RegisterDeviceTokenInput value,
    $Res Function(RegisterDeviceTokenInput) then,
  ) = _$RegisterDeviceTokenInputCopyWithImpl<$Res, RegisterDeviceTokenInput>;
  @useResult
  $Res call({String userId, String token});
}

/// @nodoc
class _$RegisterDeviceTokenInputCopyWithImpl<
  $Res,
  $Val extends RegisterDeviceTokenInput
>
    implements $RegisterDeviceTokenInputCopyWith<$Res> {
  _$RegisterDeviceTokenInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterDeviceTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? token = null}) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            token: null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RegisterDeviceTokenInputImplCopyWith<$Res>
    implements $RegisterDeviceTokenInputCopyWith<$Res> {
  factory _$$RegisterDeviceTokenInputImplCopyWith(
    _$RegisterDeviceTokenInputImpl value,
    $Res Function(_$RegisterDeviceTokenInputImpl) then,
  ) = __$$RegisterDeviceTokenInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String token});
}

/// @nodoc
class __$$RegisterDeviceTokenInputImplCopyWithImpl<$Res>
    extends
        _$RegisterDeviceTokenInputCopyWithImpl<
          $Res,
          _$RegisterDeviceTokenInputImpl
        >
    implements _$$RegisterDeviceTokenInputImplCopyWith<$Res> {
  __$$RegisterDeviceTokenInputImplCopyWithImpl(
    _$RegisterDeviceTokenInputImpl _value,
    $Res Function(_$RegisterDeviceTokenInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterDeviceTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? token = null}) {
    return _then(
      _$RegisterDeviceTokenInputImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RegisterDeviceTokenInputImpl
    with DiagnosticableTreeMixin
    implements _RegisterDeviceTokenInput {
  const _$RegisterDeviceTokenInputImpl({
    required this.userId,
    required this.token,
  });

  @override
  final String userId;
  @override
  final String token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterDeviceTokenInput(userId: $userId, token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterDeviceTokenInput'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterDeviceTokenInputImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, token);

  /// Create a copy of RegisterDeviceTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterDeviceTokenInputImplCopyWith<_$RegisterDeviceTokenInputImpl>
  get copyWith =>
      __$$RegisterDeviceTokenInputImplCopyWithImpl<
        _$RegisterDeviceTokenInputImpl
      >(this, _$identity);
}

abstract class _RegisterDeviceTokenInput implements RegisterDeviceTokenInput {
  const factory _RegisterDeviceTokenInput({
    required final String userId,
    required final String token,
  }) = _$RegisterDeviceTokenInputImpl;

  @override
  String get userId;
  @override
  String get token;

  /// Create a copy of RegisterDeviceTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterDeviceTokenInputImplCopyWith<_$RegisterDeviceTokenInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterDeviceTokenOutput {
  DeviceToken? get deviceToken => throw _privateConstructorUsedError;

  /// Create a copy of RegisterDeviceTokenOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterDeviceTokenOutputCopyWith<RegisterDeviceTokenOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDeviceTokenOutputCopyWith<$Res> {
  factory $RegisterDeviceTokenOutputCopyWith(
    RegisterDeviceTokenOutput value,
    $Res Function(RegisterDeviceTokenOutput) then,
  ) = _$RegisterDeviceTokenOutputCopyWithImpl<$Res, RegisterDeviceTokenOutput>;
  @useResult
  $Res call({DeviceToken? deviceToken});

  $DeviceTokenCopyWith<$Res>? get deviceToken;
}

/// @nodoc
class _$RegisterDeviceTokenOutputCopyWithImpl<
  $Res,
  $Val extends RegisterDeviceTokenOutput
>
    implements $RegisterDeviceTokenOutputCopyWith<$Res> {
  _$RegisterDeviceTokenOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterDeviceTokenOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? deviceToken = freezed}) {
    return _then(
      _value.copyWith(
            deviceToken: freezed == deviceToken
                ? _value.deviceToken
                : deviceToken // ignore: cast_nullable_to_non_nullable
                      as DeviceToken?,
          )
          as $Val,
    );
  }

  /// Create a copy of RegisterDeviceTokenOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceTokenCopyWith<$Res>? get deviceToken {
    if (_value.deviceToken == null) {
      return null;
    }

    return $DeviceTokenCopyWith<$Res>(_value.deviceToken!, (value) {
      return _then(_value.copyWith(deviceToken: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterDeviceTokenOutputImplCopyWith<$Res>
    implements $RegisterDeviceTokenOutputCopyWith<$Res> {
  factory _$$RegisterDeviceTokenOutputImplCopyWith(
    _$RegisterDeviceTokenOutputImpl value,
    $Res Function(_$RegisterDeviceTokenOutputImpl) then,
  ) = __$$RegisterDeviceTokenOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceToken? deviceToken});

  @override
  $DeviceTokenCopyWith<$Res>? get deviceToken;
}

/// @nodoc
class __$$RegisterDeviceTokenOutputImplCopyWithImpl<$Res>
    extends
        _$RegisterDeviceTokenOutputCopyWithImpl<
          $Res,
          _$RegisterDeviceTokenOutputImpl
        >
    implements _$$RegisterDeviceTokenOutputImplCopyWith<$Res> {
  __$$RegisterDeviceTokenOutputImplCopyWithImpl(
    _$RegisterDeviceTokenOutputImpl _value,
    $Res Function(_$RegisterDeviceTokenOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterDeviceTokenOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? deviceToken = freezed}) {
    return _then(
      _$RegisterDeviceTokenOutputImpl(
        deviceToken: freezed == deviceToken
            ? _value.deviceToken
            : deviceToken // ignore: cast_nullable_to_non_nullable
                  as DeviceToken?,
      ),
    );
  }
}

/// @nodoc

class _$RegisterDeviceTokenOutputImpl extends _RegisterDeviceTokenOutput
    with DiagnosticableTreeMixin {
  const _$RegisterDeviceTokenOutputImpl({this.deviceToken}) : super._();

  @override
  final DeviceToken? deviceToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterDeviceTokenOutput(deviceToken: $deviceToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterDeviceTokenOutput'))
      ..add(DiagnosticsProperty('deviceToken', deviceToken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterDeviceTokenOutputImpl &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deviceToken);

  /// Create a copy of RegisterDeviceTokenOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterDeviceTokenOutputImplCopyWith<_$RegisterDeviceTokenOutputImpl>
  get copyWith =>
      __$$RegisterDeviceTokenOutputImplCopyWithImpl<
        _$RegisterDeviceTokenOutputImpl
      >(this, _$identity);
}

abstract class _RegisterDeviceTokenOutput extends RegisterDeviceTokenOutput {
  const factory _RegisterDeviceTokenOutput({final DeviceToken? deviceToken}) =
      _$RegisterDeviceTokenOutputImpl;
  const _RegisterDeviceTokenOutput._() : super._();

  @override
  DeviceToken? get deviceToken;

  /// Create a copy of RegisterDeviceTokenOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterDeviceTokenOutputImplCopyWith<_$RegisterDeviceTokenOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
