// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MemberData _$MemberDataFromJson(Map<String, dynamic> json) {
  return _MemberData.fromJson(json);
}

/// @nodoc
mixin _$MemberData {
  @JsonKey(name: 'userId', includeToJson: false)
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'unreadCount')
  int? get unreadCount => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'lastReadAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get lastReadAt => throw _privateConstructorUsedError;

  /// Serializes this MemberData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberDataCopyWith<MemberData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDataCopyWith<$Res> {
  factory $MemberDataCopyWith(
    MemberData value,
    $Res Function(MemberData) then,
  ) = _$MemberDataCopyWithImpl<$Res, MemberData>;
  @useResult
  $Res call({
    @JsonKey(name: 'userId', includeToJson: false) String? userId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'unreadCount') int? unreadCount,
    @JsonKey(
      name: 'lastReadAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? lastReadAt,
  });
}

/// @nodoc
class _$MemberDataCopyWithImpl<$Res, $Val extends MemberData>
    implements $MemberDataCopyWith<$Res> {
  _$MemberDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
    Object? role = freezed,
    Object? unreadCount = freezed,
    Object? lastReadAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            avatar: freezed == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                      as String?,
            role: freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String?,
            unreadCount: freezed == unreadCount
                ? _value.unreadCount
                : unreadCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            lastReadAt: freezed == lastReadAt
                ? _value.lastReadAt
                : lastReadAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MemberDataImplCopyWith<$Res>
    implements $MemberDataCopyWith<$Res> {
  factory _$$MemberDataImplCopyWith(
    _$MemberDataImpl value,
    $Res Function(_$MemberDataImpl) then,
  ) = __$$MemberDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'userId', includeToJson: false) String? userId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'unreadCount') int? unreadCount,
    @JsonKey(
      name: 'lastReadAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? lastReadAt,
  });
}

/// @nodoc
class __$$MemberDataImplCopyWithImpl<$Res>
    extends _$MemberDataCopyWithImpl<$Res, _$MemberDataImpl>
    implements _$$MemberDataImplCopyWith<$Res> {
  __$$MemberDataImplCopyWithImpl(
    _$MemberDataImpl _value,
    $Res Function(_$MemberDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemberData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
    Object? role = freezed,
    Object? unreadCount = freezed,
    Object? lastReadAt = freezed,
  }) {
    return _then(
      _$MemberDataImpl(
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatar: freezed == avatar
            ? _value.avatar
            : avatar // ignore: cast_nullable_to_non_nullable
                  as String?,
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String?,
        unreadCount: freezed == unreadCount
            ? _value.unreadCount
            : unreadCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        lastReadAt: freezed == lastReadAt
            ? _value.lastReadAt
            : lastReadAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberDataImpl implements _MemberData {
  const _$MemberDataImpl({
    @JsonKey(name: 'userId', includeToJson: false) this.userId,
    @JsonKey(name: 'fullName') this.fullName,
    @JsonKey(name: 'avatar') this.avatar,
    @JsonKey(name: 'role') this.role,
    @JsonKey(name: 'unreadCount') this.unreadCount,
    @JsonKey(
      name: 'lastReadAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    this.lastReadAt,
  });

  factory _$MemberDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberDataImplFromJson(json);

  @override
  @JsonKey(name: 'userId', includeToJson: false)
  final String? userId;
  @override
  @JsonKey(name: 'fullName')
  final String? fullName;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;
  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'unreadCount')
  final int? unreadCount;
  @override
  @JsonKey(
    name: 'lastReadAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  final DateTime? lastReadAt;

  @override
  String toString() {
    return 'MemberData(userId: $userId, fullName: $fullName, avatar: $avatar, role: $role, unreadCount: $unreadCount, lastReadAt: $lastReadAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.lastReadAt, lastReadAt) ||
                other.lastReadAt == lastReadAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    fullName,
    avatar,
    role,
    unreadCount,
    lastReadAt,
  );

  /// Create a copy of MemberData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberDataImplCopyWith<_$MemberDataImpl> get copyWith =>
      __$$MemberDataImplCopyWithImpl<_$MemberDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberDataImplToJson(this);
  }
}

abstract class _MemberData implements MemberData {
  const factory _MemberData({
    @JsonKey(name: 'userId', includeToJson: false) final String? userId,
    @JsonKey(name: 'fullName') final String? fullName,
    @JsonKey(name: 'avatar') final String? avatar,
    @JsonKey(name: 'role') final String? role,
    @JsonKey(name: 'unreadCount') final int? unreadCount,
    @JsonKey(
      name: 'lastReadAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    final DateTime? lastReadAt,
  }) = _$MemberDataImpl;

  factory _MemberData.fromJson(Map<String, dynamic> json) =
      _$MemberDataImpl.fromJson;

  @override
  @JsonKey(name: 'userId', includeToJson: false)
  String? get userId;
  @override
  @JsonKey(name: 'fullName')
  String? get fullName;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'unreadCount')
  int? get unreadCount;
  @override
  @JsonKey(
    name: 'lastReadAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get lastReadAt;

  /// Create a copy of MemberData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberDataImplCopyWith<_$MemberDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
