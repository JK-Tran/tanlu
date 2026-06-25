// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_token_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeviceTokenData _$DeviceTokenDataFromJson(Map<String, dynamic> json) {
  return _DeviceTokenData.fromJson(json);
}

/// @nodoc
mixin _$DeviceTokenData {
  @JsonKey(name: 'userId', includeToJson: false)
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcmToken')
  String? get fcmToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcmTokenUpdatedAt')
  DateTime? get fcmTokenUpdatedAt => throw _privateConstructorUsedError;

  /// Serializes this DeviceTokenData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceTokenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceTokenDataCopyWith<DeviceTokenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceTokenDataCopyWith<$Res> {
  factory $DeviceTokenDataCopyWith(
    DeviceTokenData value,
    $Res Function(DeviceTokenData) then,
  ) = _$DeviceTokenDataCopyWithImpl<$Res, DeviceTokenData>;
  @useResult
  $Res call({
    @JsonKey(name: 'userId', includeToJson: false) String? userId,
    @JsonKey(name: 'fcmToken') String? fcmToken,
    @JsonKey(name: 'fcmTokenUpdatedAt') DateTime? fcmTokenUpdatedAt,
  });
}

/// @nodoc
class _$DeviceTokenDataCopyWithImpl<$Res, $Val extends DeviceTokenData>
    implements $DeviceTokenDataCopyWith<$Res> {
  _$DeviceTokenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceTokenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? fcmToken = freezed,
    Object? fcmTokenUpdatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            fcmToken: freezed == fcmToken
                ? _value.fcmToken
                : fcmToken // ignore: cast_nullable_to_non_nullable
                      as String?,
            fcmTokenUpdatedAt: freezed == fcmTokenUpdatedAt
                ? _value.fcmTokenUpdatedAt
                : fcmTokenUpdatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeviceTokenDataImplCopyWith<$Res>
    implements $DeviceTokenDataCopyWith<$Res> {
  factory _$$DeviceTokenDataImplCopyWith(
    _$DeviceTokenDataImpl value,
    $Res Function(_$DeviceTokenDataImpl) then,
  ) = __$$DeviceTokenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'userId', includeToJson: false) String? userId,
    @JsonKey(name: 'fcmToken') String? fcmToken,
    @JsonKey(name: 'fcmTokenUpdatedAt') DateTime? fcmTokenUpdatedAt,
  });
}

/// @nodoc
class __$$DeviceTokenDataImplCopyWithImpl<$Res>
    extends _$DeviceTokenDataCopyWithImpl<$Res, _$DeviceTokenDataImpl>
    implements _$$DeviceTokenDataImplCopyWith<$Res> {
  __$$DeviceTokenDataImplCopyWithImpl(
    _$DeviceTokenDataImpl _value,
    $Res Function(_$DeviceTokenDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeviceTokenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? fcmToken = freezed,
    Object? fcmTokenUpdatedAt = freezed,
  }) {
    return _then(
      _$DeviceTokenDataImpl(
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        fcmToken: freezed == fcmToken
            ? _value.fcmToken
            : fcmToken // ignore: cast_nullable_to_non_nullable
                  as String?,
        fcmTokenUpdatedAt: freezed == fcmTokenUpdatedAt
            ? _value.fcmTokenUpdatedAt
            : fcmTokenUpdatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceTokenDataImpl implements _DeviceTokenData {
  const _$DeviceTokenDataImpl({
    @JsonKey(name: 'userId', includeToJson: false) this.userId,
    @JsonKey(name: 'fcmToken') this.fcmToken,
    @JsonKey(name: 'fcmTokenUpdatedAt') this.fcmTokenUpdatedAt,
  });

  factory _$DeviceTokenDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceTokenDataImplFromJson(json);

  @override
  @JsonKey(name: 'userId', includeToJson: false)
  final String? userId;
  @override
  @JsonKey(name: 'fcmToken')
  final String? fcmToken;
  @override
  @JsonKey(name: 'fcmTokenUpdatedAt')
  final DateTime? fcmTokenUpdatedAt;

  @override
  String toString() {
    return 'DeviceTokenData(userId: $userId, fcmToken: $fcmToken, fcmTokenUpdatedAt: $fcmTokenUpdatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceTokenDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.fcmTokenUpdatedAt, fcmTokenUpdatedAt) ||
                other.fcmTokenUpdatedAt == fcmTokenUpdatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, fcmToken, fcmTokenUpdatedAt);

  /// Create a copy of DeviceTokenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceTokenDataImplCopyWith<_$DeviceTokenDataImpl> get copyWith =>
      __$$DeviceTokenDataImplCopyWithImpl<_$DeviceTokenDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceTokenDataImplToJson(this);
  }
}

abstract class _DeviceTokenData implements DeviceTokenData {
  const factory _DeviceTokenData({
    @JsonKey(name: 'userId', includeToJson: false) final String? userId,
    @JsonKey(name: 'fcmToken') final String? fcmToken,
    @JsonKey(name: 'fcmTokenUpdatedAt') final DateTime? fcmTokenUpdatedAt,
  }) = _$DeviceTokenDataImpl;

  factory _DeviceTokenData.fromJson(Map<String, dynamic> json) =
      _$DeviceTokenDataImpl.fromJson;

  @override
  @JsonKey(name: 'userId', includeToJson: false)
  String? get userId;
  @override
  @JsonKey(name: 'fcmToken')
  String? get fcmToken;
  @override
  @JsonKey(name: 'fcmTokenUpdatedAt')
  DateTime? get fcmTokenUpdatedAt;

  /// Create a copy of DeviceTokenData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceTokenDataImplCopyWith<_$DeviceTokenDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
