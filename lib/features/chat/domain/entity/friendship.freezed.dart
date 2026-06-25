// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friendship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Friendship {
  String get id => throw _privateConstructorUsedError;
  List<String> get userIds => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of Friendship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FriendshipCopyWith<Friendship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendshipCopyWith<$Res> {
  factory $FriendshipCopyWith(
    Friendship value,
    $Res Function(Friendship) then,
  ) = _$FriendshipCopyWithImpl<$Res, Friendship>;
  @useResult
  $Res call({String id, List<String> userIds, DateTime? createdAt});
}

/// @nodoc
class _$FriendshipCopyWithImpl<$Res, $Val extends Friendship>
    implements $FriendshipCopyWith<$Res> {
  _$FriendshipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Friendship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userIds = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userIds: null == userIds
                ? _value.userIds
                : userIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
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
abstract class _$$FriendshipImplCopyWith<$Res>
    implements $FriendshipCopyWith<$Res> {
  factory _$$FriendshipImplCopyWith(
    _$FriendshipImpl value,
    $Res Function(_$FriendshipImpl) then,
  ) = __$$FriendshipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<String> userIds, DateTime? createdAt});
}

/// @nodoc
class __$$FriendshipImplCopyWithImpl<$Res>
    extends _$FriendshipCopyWithImpl<$Res, _$FriendshipImpl>
    implements _$$FriendshipImplCopyWith<$Res> {
  __$$FriendshipImplCopyWithImpl(
    _$FriendshipImpl _value,
    $Res Function(_$FriendshipImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Friendship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userIds = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$FriendshipImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userIds: null == userIds
            ? _value._userIds
            : userIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$FriendshipImpl implements _Friendship {
  const _$FriendshipImpl({
    this.id = '',
    final List<String> userIds = const [],
    this.createdAt,
  }) : _userIds = userIds;

  @override
  @JsonKey()
  final String id;
  final List<String> _userIds;
  @override
  @JsonKey()
  List<String> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Friendship(id: $id, userIds: $userIds, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendshipImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    const DeepCollectionEquality().hash(_userIds),
    createdAt,
  );

  /// Create a copy of Friendship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendshipImplCopyWith<_$FriendshipImpl> get copyWith =>
      __$$FriendshipImplCopyWithImpl<_$FriendshipImpl>(this, _$identity);
}

abstract class _Friendship implements Friendship {
  const factory _Friendship({
    final String id,
    final List<String> userIds,
    final DateTime? createdAt,
  }) = _$FriendshipImpl;

  @override
  String get id;
  @override
  List<String> get userIds;
  @override
  DateTime? get createdAt;

  /// Create a copy of Friendship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FriendshipImplCopyWith<_$FriendshipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
