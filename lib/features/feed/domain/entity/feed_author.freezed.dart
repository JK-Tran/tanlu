// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_author.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FeedAuthor {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Create a copy of FeedAuthor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedAuthorCopyWith<FeedAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedAuthorCopyWith<$Res> {
  factory $FeedAuthorCopyWith(
    FeedAuthor value,
    $Res Function(FeedAuthor) then,
  ) = _$FeedAuthorCopyWithImpl<$Res, FeedAuthor>;
  @useResult
  $Res call({int id, String fullName, String? avatarUrl});
}

/// @nodoc
class _$FeedAuthorCopyWithImpl<$Res, $Val extends FeedAuthor>
    implements $FeedAuthorCopyWith<$Res> {
  _$FeedAuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedAuthor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeedAuthorImplCopyWith<$Res>
    implements $FeedAuthorCopyWith<$Res> {
  factory _$$FeedAuthorImplCopyWith(
    _$FeedAuthorImpl value,
    $Res Function(_$FeedAuthorImpl) then,
  ) = __$$FeedAuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String fullName, String? avatarUrl});
}

/// @nodoc
class __$$FeedAuthorImplCopyWithImpl<$Res>
    extends _$FeedAuthorCopyWithImpl<$Res, _$FeedAuthorImpl>
    implements _$$FeedAuthorImplCopyWith<$Res> {
  __$$FeedAuthorImplCopyWithImpl(
    _$FeedAuthorImpl _value,
    $Res Function(_$FeedAuthorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedAuthor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(
      _$FeedAuthorImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$FeedAuthorImpl implements _FeedAuthor {
  const _$FeedAuthorImpl({this.id = 0, this.fullName = '', this.avatarUrl});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String fullName;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'FeedAuthor(id: $id, fullName: $fullName, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedAuthorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, avatarUrl);

  /// Create a copy of FeedAuthor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedAuthorImplCopyWith<_$FeedAuthorImpl> get copyWith =>
      __$$FeedAuthorImplCopyWithImpl<_$FeedAuthorImpl>(this, _$identity);
}

abstract class _FeedAuthor implements FeedAuthor {
  const factory _FeedAuthor({
    final int id,
    final String fullName,
    final String? avatarUrl,
  }) = _$FeedAuthorImpl;

  @override
  int get id;
  @override
  String get fullName;
  @override
  String? get avatarUrl;

  /// Create a copy of FeedAuthor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedAuthorImplCopyWith<_$FeedAuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
