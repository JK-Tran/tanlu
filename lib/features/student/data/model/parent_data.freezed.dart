// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parent_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ParentData _$ParentDataFromJson(Map<String, dynamic> json) {
  return _ParentData.fromJson(json);
}

/// @nodoc
mixin _$ParentData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  String? get address => throw _privateConstructorUsedError;
  @JsonKey()
  String? get occupation => throw _privateConstructorUsedError;
  @JsonKey()
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey()
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey()
  UserData? get user => throw _privateConstructorUsedError;

  /// Serializes this ParentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParentDataCopyWith<ParentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentDataCopyWith<$Res> {
  factory $ParentDataCopyWith(
    ParentData value,
    $Res Function(ParentData) then,
  ) = _$ParentDataCopyWithImpl<$Res, ParentData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() String? address,
    @JsonKey() String? occupation,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() UserData? user,
  });

  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$ParentDataCopyWithImpl<$Res, $Val extends ParentData>
    implements $ParentDataCopyWith<$Res> {
  _$ParentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? occupation = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            occupation: freezed == occupation
                ? _value.occupation
                : occupation // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as UserData?,
          )
          as $Val,
    );
  }

  /// Create a copy of ParentData
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
abstract class _$$ParentDataImplCopyWith<$Res>
    implements $ParentDataCopyWith<$Res> {
  factory _$$ParentDataImplCopyWith(
    _$ParentDataImpl value,
    $Res Function(_$ParentDataImpl) then,
  ) = __$$ParentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() String? address,
    @JsonKey() String? occupation,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() UserData? user,
  });

  @override
  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ParentDataImplCopyWithImpl<$Res>
    extends _$ParentDataCopyWithImpl<$Res, _$ParentDataImpl>
    implements _$$ParentDataImplCopyWith<$Res> {
  __$$ParentDataImplCopyWithImpl(
    _$ParentDataImpl _value,
    $Res Function(_$ParentDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ParentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? occupation = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(
      _$ParentDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        occupation: freezed == occupation
            ? _value.occupation
            : occupation // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ParentDataImpl extends _ParentData {
  const _$ParentDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.address,
    @JsonKey() this.occupation,
    @JsonKey() this.createdAt,
    @JsonKey() this.updatedAt,
    @JsonKey() this.user,
  }) : super._();

  factory _$ParentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParentDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? address;
  @override
  @JsonKey()
  final String? occupation;
  @override
  @JsonKey()
  final String? createdAt;
  @override
  @JsonKey()
  final String? updatedAt;
  @override
  @JsonKey()
  final UserData? user;

  @override
  String toString() {
    return 'ParentData(id: $id, address: $address, occupation: $occupation, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    address,
    occupation,
    createdAt,
    updatedAt,
    user,
  );

  /// Create a copy of ParentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentDataImplCopyWith<_$ParentDataImpl> get copyWith =>
      __$$ParentDataImplCopyWithImpl<_$ParentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParentDataImplToJson(this);
  }
}

abstract class _ParentData extends ParentData {
  const factory _ParentData({
    @JsonKey() final int? id,
    @JsonKey() final String? address,
    @JsonKey() final String? occupation,
    @JsonKey() final String? createdAt,
    @JsonKey() final String? updatedAt,
    @JsonKey() final UserData? user,
  }) = _$ParentDataImpl;
  const _ParentData._() : super._();

  factory _ParentData.fromJson(Map<String, dynamic> json) =
      _$ParentDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  String? get address;
  @override
  @JsonKey()
  String? get occupation;
  @override
  @JsonKey()
  String? get createdAt;
  @override
  @JsonKey()
  String? get updatedAt;
  @override
  @JsonKey()
  UserData? get user;

  /// Create a copy of ParentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParentDataImplCopyWith<_$ParentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
