// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FriendRequestData _$FriendRequestDataFromJson(Map<String, dynamic> json) {
  return _FriendRequestData.fromJson(json);
}

/// @nodoc
mixin _$FriendRequestData {
  @JsonKey(name: 'id', includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fromUserId')
  String? get fromUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'toUserId')
  String? get toUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'createdAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'updatedAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this FriendRequestData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FriendRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FriendRequestDataCopyWith<FriendRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestDataCopyWith<$Res> {
  factory $FriendRequestDataCopyWith(
    FriendRequestData value,
    $Res Function(FriendRequestData) then,
  ) = _$FriendRequestDataCopyWithImpl<$Res, FriendRequestData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'fromUserId') String? fromUserId,
    @JsonKey(name: 'toUserId') String? toUserId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? createdAt,
    @JsonKey(
      name: 'updatedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$FriendRequestDataCopyWithImpl<$Res, $Val extends FriendRequestData>
    implements $FriendRequestDataCopyWith<$Res> {
  _$FriendRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FriendRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromUserId = freezed,
    Object? toUserId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            fromUserId: freezed == fromUserId
                ? _value.fromUserId
                : fromUserId // ignore: cast_nullable_to_non_nullable
                      as String?,
            toUserId: freezed == toUserId
                ? _value.toUserId
                : toUserId // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FriendRequestDataImplCopyWith<$Res>
    implements $FriendRequestDataCopyWith<$Res> {
  factory _$$FriendRequestDataImplCopyWith(
    _$FriendRequestDataImpl value,
    $Res Function(_$FriendRequestDataImpl) then,
  ) = __$$FriendRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'fromUserId') String? fromUserId,
    @JsonKey(name: 'toUserId') String? toUserId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? createdAt,
    @JsonKey(
      name: 'updatedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$FriendRequestDataImplCopyWithImpl<$Res>
    extends _$FriendRequestDataCopyWithImpl<$Res, _$FriendRequestDataImpl>
    implements _$$FriendRequestDataImplCopyWith<$Res> {
  __$$FriendRequestDataImplCopyWithImpl(
    _$FriendRequestDataImpl _value,
    $Res Function(_$FriendRequestDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FriendRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromUserId = freezed,
    Object? toUserId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$FriendRequestDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        fromUserId: freezed == fromUserId
            ? _value.fromUserId
            : fromUserId // ignore: cast_nullable_to_non_nullable
                  as String?,
        toUserId: freezed == toUserId
            ? _value.toUserId
            : toUserId // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FriendRequestDataImpl implements _FriendRequestData {
  const _$FriendRequestDataImpl({
    @JsonKey(name: 'id', includeToJson: false) this.id,
    @JsonKey(name: 'fromUserId') this.fromUserId,
    @JsonKey(name: 'toUserId') this.toUserId,
    @JsonKey(name: 'status') this.status,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    this.createdAt,
    @JsonKey(
      name: 'updatedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    this.updatedAt,
  });

  factory _$FriendRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FriendRequestDataImplFromJson(json);

  @override
  @JsonKey(name: 'id', includeToJson: false)
  final String? id;
  @override
  @JsonKey(name: 'fromUserId')
  final String? fromUserId;
  @override
  @JsonKey(name: 'toUserId')
  final String? toUserId;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(
    name: 'createdAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  final DateTime? createdAt;
  @override
  @JsonKey(
    name: 'updatedAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FriendRequestData(id: $id, fromUserId: $fromUserId, toUserId: $toUserId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendRequestDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromUserId, fromUserId) ||
                other.fromUserId == fromUserId) &&
            (identical(other.toUserId, toUserId) ||
                other.toUserId == toUserId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    fromUserId,
    toUserId,
    status,
    createdAt,
    updatedAt,
  );

  /// Create a copy of FriendRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendRequestDataImplCopyWith<_$FriendRequestDataImpl> get copyWith =>
      __$$FriendRequestDataImplCopyWithImpl<_$FriendRequestDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FriendRequestDataImplToJson(this);
  }
}

abstract class _FriendRequestData implements FriendRequestData {
  const factory _FriendRequestData({
    @JsonKey(name: 'id', includeToJson: false) final String? id,
    @JsonKey(name: 'fromUserId') final String? fromUserId,
    @JsonKey(name: 'toUserId') final String? toUserId,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    final DateTime? createdAt,
    @JsonKey(
      name: 'updatedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    final DateTime? updatedAt,
  }) = _$FriendRequestDataImpl;

  factory _FriendRequestData.fromJson(Map<String, dynamic> json) =
      _$FriendRequestDataImpl.fromJson;

  @override
  @JsonKey(name: 'id', includeToJson: false)
  String? get id;
  @override
  @JsonKey(name: 'fromUserId')
  String? get fromUserId;
  @override
  @JsonKey(name: 'toUserId')
  String? get toUserId;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(
    name: 'createdAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get createdAt;
  @override
  @JsonKey(
    name: 'updatedAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get updatedAt;

  /// Create a copy of FriendRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FriendRequestDataImplCopyWith<_$FriendRequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
