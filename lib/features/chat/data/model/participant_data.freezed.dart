// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ParticipantData _$ParticipantDataFromJson(Map<String, dynamic> json) {
  return _ParticipantData.fromJson(json);
}

/// @nodoc
mixin _$ParticipantData {
  @JsonKey()
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey()
  String? get role => throw _privateConstructorUsedError;
  @JsonKey()
  ChatUserData? get user => throw _privateConstructorUsedError;

  /// Serializes this ParticipantData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParticipantData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipantDataCopyWith<ParticipantData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantDataCopyWith<$Res> {
  factory $ParticipantDataCopyWith(
    ParticipantData value,
    $Res Function(ParticipantData) then,
  ) = _$ParticipantDataCopyWithImpl<$Res, ParticipantData>;
  @useResult
  $Res call({
    @JsonKey() int? userId,
    @JsonKey() String? role,
    @JsonKey() ChatUserData? user,
  });

  $ChatUserDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$ParticipantDataCopyWithImpl<$Res, $Val extends ParticipantData>
    implements $ParticipantDataCopyWith<$Res> {
  _$ParticipantDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParticipantData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? role = freezed,
    Object? user = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
            role: freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String?,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as ChatUserData?,
          )
          as $Val,
    );
  }

  /// Create a copy of ParticipantData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatUserDataCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ChatUserDataCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParticipantDataImplCopyWith<$Res>
    implements $ParticipantDataCopyWith<$Res> {
  factory _$$ParticipantDataImplCopyWith(
    _$ParticipantDataImpl value,
    $Res Function(_$ParticipantDataImpl) then,
  ) = __$$ParticipantDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? userId,
    @JsonKey() String? role,
    @JsonKey() ChatUserData? user,
  });

  @override
  $ChatUserDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ParticipantDataImplCopyWithImpl<$Res>
    extends _$ParticipantDataCopyWithImpl<$Res, _$ParticipantDataImpl>
    implements _$$ParticipantDataImplCopyWith<$Res> {
  __$$ParticipantDataImplCopyWithImpl(
    _$ParticipantDataImpl _value,
    $Res Function(_$ParticipantDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ParticipantData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? role = freezed,
    Object? user = freezed,
  }) {
    return _then(
      _$ParticipantDataImpl(
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String?,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as ChatUserData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ParticipantDataImpl extends _ParticipantData {
  const _$ParticipantDataImpl({
    @JsonKey() this.userId,
    @JsonKey() this.role,
    @JsonKey() this.user,
  }) : super._();

  factory _$ParticipantDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipantDataImplFromJson(json);

  @override
  @JsonKey()
  final int? userId;
  @override
  @JsonKey()
  final String? role;
  @override
  @JsonKey()
  final ChatUserData? user;

  @override
  String toString() {
    return 'ParticipantData(userId: $userId, role: $role, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, role, user);

  /// Create a copy of ParticipantData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantDataImplCopyWith<_$ParticipantDataImpl> get copyWith =>
      __$$ParticipantDataImplCopyWithImpl<_$ParticipantDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipantDataImplToJson(this);
  }
}

abstract class _ParticipantData extends ParticipantData {
  const factory _ParticipantData({
    @JsonKey() final int? userId,
    @JsonKey() final String? role,
    @JsonKey() final ChatUserData? user,
  }) = _$ParticipantDataImpl;
  const _ParticipantData._() : super._();

  factory _ParticipantData.fromJson(Map<String, dynamic> json) =
      _$ParticipantDataImpl.fromJson;

  @override
  @JsonKey()
  int? get userId;
  @override
  @JsonKey()
  String? get role;
  @override
  @JsonKey()
  ChatUserData? get user;

  /// Create a copy of ParticipantData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipantDataImplCopyWith<_$ParticipantDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
