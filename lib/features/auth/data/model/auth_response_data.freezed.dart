// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuthResponseData _$AuthResponseDataFromJson(Map<String, dynamic> json) {
  return _AuthResponseData.fromJson(json);
}

/// @nodoc
mixin _$AuthResponseData {
  @JsonKey()
  UserData? get user => throw _privateConstructorUsedError;
  @JsonKey()
  String? get token => throw _privateConstructorUsedError;

  /// Serializes this AuthResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthResponseDataCopyWith<AuthResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseDataCopyWith<$Res> {
  factory $AuthResponseDataCopyWith(
    AuthResponseData value,
    $Res Function(AuthResponseData) then,
  ) = _$AuthResponseDataCopyWithImpl<$Res, AuthResponseData>;
  @useResult
  $Res call({@JsonKey() UserData? user, @JsonKey() String? token});

  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthResponseDataCopyWithImpl<$Res, $Val extends AuthResponseData>
    implements $AuthResponseDataCopyWith<$Res> {
  _$AuthResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = freezed, Object? token = freezed}) {
    return _then(
      _value.copyWith(
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as UserData?,
            token: freezed == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of AuthResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthResponseDataImplCopyWith<$Res>
    implements $AuthResponseDataCopyWith<$Res> {
  factory _$$AuthResponseDataImplCopyWith(
    _$AuthResponseDataImpl value,
    $Res Function(_$AuthResponseDataImpl) then,
  ) = __$$AuthResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey() UserData? user, @JsonKey() String? token});

  @override
  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthResponseDataImplCopyWithImpl<$Res>
    extends _$AuthResponseDataCopyWithImpl<$Res, _$AuthResponseDataImpl>
    implements _$$AuthResponseDataImplCopyWith<$Res> {
  __$$AuthResponseDataImplCopyWithImpl(
    _$AuthResponseDataImpl _value,
    $Res Function(_$AuthResponseDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = freezed, Object? token = freezed}) {
    return _then(
      _$AuthResponseDataImpl(
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserData?,
        token: freezed == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResponseDataImpl extends _AuthResponseData {
  const _$AuthResponseDataImpl({@JsonKey() this.user, @JsonKey() this.token})
    : super._();

  factory _$AuthResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseDataImplFromJson(json);

  @override
  @JsonKey()
  final UserData? user;
  @override
  @JsonKey()
  final String? token;

  @override
  String toString() {
    return 'AuthResponseData(user: $user, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseDataImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  /// Create a copy of AuthResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseDataImplCopyWith<_$AuthResponseDataImpl> get copyWith =>
      __$$AuthResponseDataImplCopyWithImpl<_$AuthResponseDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseDataImplToJson(this);
  }
}

abstract class _AuthResponseData extends AuthResponseData {
  const factory _AuthResponseData({
    @JsonKey() final UserData? user,
    @JsonKey() final String? token,
  }) = _$AuthResponseDataImpl;
  const _AuthResponseData._() : super._();

  factory _AuthResponseData.fromJson(Map<String, dynamic> json) =
      _$AuthResponseDataImpl.fromJson;

  @override
  @JsonKey()
  UserData? get user;
  @override
  @JsonKey()
  String? get token;

  /// Create a copy of AuthResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResponseDataImplCopyWith<_$AuthResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
