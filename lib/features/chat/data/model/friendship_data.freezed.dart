// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friendship_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FriendshipData _$FriendshipDataFromJson(Map<String, dynamic> json) {
  return _FriendshipData.fromJson(json);
}

/// @nodoc
mixin _$FriendshipData {
  @JsonKey(name: 'id', includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userIds')
  List<String>? get userIds => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'createdAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this FriendshipData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FriendshipData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FriendshipDataCopyWith<FriendshipData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendshipDataCopyWith<$Res> {
  factory $FriendshipDataCopyWith(
    FriendshipData value,
    $Res Function(FriendshipData) then,
  ) = _$FriendshipDataCopyWithImpl<$Res, FriendshipData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'userIds') List<String>? userIds,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? createdAt,
  });
}

/// @nodoc
class _$FriendshipDataCopyWithImpl<$Res, $Val extends FriendshipData>
    implements $FriendshipDataCopyWith<$Res> {
  _$FriendshipDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FriendshipData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userIds = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            userIds: freezed == userIds
                ? _value.userIds
                : userIds // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FriendshipDataImplCopyWith<$Res>
    implements $FriendshipDataCopyWith<$Res> {
  factory _$$FriendshipDataImplCopyWith(
    _$FriendshipDataImpl value,
    $Res Function(_$FriendshipDataImpl) then,
  ) = __$$FriendshipDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'userIds') List<String>? userIds,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$FriendshipDataImplCopyWithImpl<$Res>
    extends _$FriendshipDataCopyWithImpl<$Res, _$FriendshipDataImpl>
    implements _$$FriendshipDataImplCopyWith<$Res> {
  __$$FriendshipDataImplCopyWithImpl(
    _$FriendshipDataImpl _value,
    $Res Function(_$FriendshipDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FriendshipData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userIds = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$FriendshipDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        userIds: freezed == userIds
            ? _value._userIds
            : userIds // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FriendshipDataImpl implements _FriendshipData {
  const _$FriendshipDataImpl({
    @JsonKey(name: 'id', includeToJson: false) this.id,
    @JsonKey(name: 'userIds') final List<String>? userIds,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    this.createdAt,
  }) : _userIds = userIds;

  factory _$FriendshipDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FriendshipDataImplFromJson(json);

  @override
  @JsonKey(name: 'id', includeToJson: false)
  final String? id;
  final List<String>? _userIds;
  @override
  @JsonKey(name: 'userIds')
  List<String>? get userIds {
    final value = _userIds;
    if (value == null) return null;
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(
    name: 'createdAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  final DateTime? createdAt;

  @override
  String toString() {
    return 'FriendshipData(id: $id, userIds: $userIds, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendshipDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    const DeepCollectionEquality().hash(_userIds),
    createdAt,
  );

  /// Create a copy of FriendshipData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendshipDataImplCopyWith<_$FriendshipDataImpl> get copyWith =>
      __$$FriendshipDataImplCopyWithImpl<_$FriendshipDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FriendshipDataImplToJson(this);
  }
}

abstract class _FriendshipData implements FriendshipData {
  const factory _FriendshipData({
    @JsonKey(name: 'id', includeToJson: false) final String? id,
    @JsonKey(name: 'userIds') final List<String>? userIds,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    final DateTime? createdAt,
  }) = _$FriendshipDataImpl;

  factory _FriendshipData.fromJson(Map<String, dynamic> json) =
      _$FriendshipDataImpl.fromJson;

  @override
  @JsonKey(name: 'id', includeToJson: false)
  String? get id;
  @override
  @JsonKey(name: 'userIds')
  List<String>? get userIds;
  @override
  @JsonKey(
    name: 'createdAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get createdAt;

  /// Create a copy of FriendshipData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FriendshipDataImplCopyWith<_$FriendshipDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
