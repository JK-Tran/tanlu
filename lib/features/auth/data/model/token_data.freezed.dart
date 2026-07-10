// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TokenData _$TokenDataFromJson(Map<String, dynamic> json) {
  return _TokenData.fromJson(json);
}

/// @nodoc
mixin _$TokenData {
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;

  /// Serializes this TokenData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenDataCopyWith<TokenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDataCopyWith<$Res> {
  factory $TokenDataCopyWith(TokenData value, $Res Function(TokenData) then) =
      _$TokenDataCopyWithImpl<$Res, TokenData>;
  @useResult
  $Res call({@JsonKey(name: 'token') String? token});
}

/// @nodoc
class _$TokenDataCopyWithImpl<$Res, $Val extends TokenData>
    implements $TokenDataCopyWith<$Res> {
  _$TokenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = freezed}) {
    return _then(
      _value.copyWith(
            token: freezed == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TokenDataImplCopyWith<$Res>
    implements $TokenDataCopyWith<$Res> {
  factory _$$TokenDataImplCopyWith(
    _$TokenDataImpl value,
    $Res Function(_$TokenDataImpl) then,
  ) = __$$TokenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'token') String? token});
}

/// @nodoc
class __$$TokenDataImplCopyWithImpl<$Res>
    extends _$TokenDataCopyWithImpl<$Res, _$TokenDataImpl>
    implements _$$TokenDataImplCopyWith<$Res> {
  __$$TokenDataImplCopyWithImpl(
    _$TokenDataImpl _value,
    $Res Function(_$TokenDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TokenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = freezed}) {
    return _then(
      _$TokenDataImpl(
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
class _$TokenDataImpl extends _TokenData {
  const _$TokenDataImpl({@JsonKey(name: 'token') this.token}) : super._();

  factory _$TokenDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenDataImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String? token;

  @override
  String toString() {
    return 'TokenData(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenDataImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of TokenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenDataImplCopyWith<_$TokenDataImpl> get copyWith =>
      __$$TokenDataImplCopyWithImpl<_$TokenDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenDataImplToJson(this);
  }
}

abstract class _TokenData extends TokenData {
  const factory _TokenData({@JsonKey(name: 'token') final String? token}) =
      _$TokenDataImpl;
  const _TokenData._() : super._();

  factory _TokenData.fromJson(Map<String, dynamic> json) =
      _$TokenDataImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String? get token;

  /// Create a copy of TokenData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenDataImplCopyWith<_$TokenDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
