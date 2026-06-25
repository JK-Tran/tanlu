// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_like.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FeedLike {
  Author get author => throw _privateConstructorUsedError;
  DateTime? get likedAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of FeedLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedLikeCopyWith<FeedLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedLikeCopyWith<$Res> {
  factory $FeedLikeCopyWith(FeedLike value, $Res Function(FeedLike) then) =
      _$FeedLikeCopyWithImpl<$Res, FeedLike>;
  @useResult
  $Res call({Author author, DateTime? likedAt, DateTime? updatedAt});

  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class _$FeedLikeCopyWithImpl<$Res, $Val extends FeedLike>
    implements $FeedLikeCopyWith<$Res> {
  _$FeedLikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedLike
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? likedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            author: null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                      as Author,
            likedAt: freezed == likedAt
                ? _value.likedAt
                : likedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of FeedLike
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedLikeImplCopyWith<$Res>
    implements $FeedLikeCopyWith<$Res> {
  factory _$$FeedLikeImplCopyWith(
    _$FeedLikeImpl value,
    $Res Function(_$FeedLikeImpl) then,
  ) = __$$FeedLikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Author author, DateTime? likedAt, DateTime? updatedAt});

  @override
  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class __$$FeedLikeImplCopyWithImpl<$Res>
    extends _$FeedLikeCopyWithImpl<$Res, _$FeedLikeImpl>
    implements _$$FeedLikeImplCopyWith<$Res> {
  __$$FeedLikeImplCopyWithImpl(
    _$FeedLikeImpl _value,
    $Res Function(_$FeedLikeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedLike
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? likedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$FeedLikeImpl(
        author: null == author
            ? _value.author
            : author // ignore: cast_nullable_to_non_nullable
                  as Author,
        likedAt: freezed == likedAt
            ? _value.likedAt
            : likedAt // ignore: cast_nullable_to_non_nullable
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

class _$FeedLikeImpl implements _FeedLike {
  const _$FeedLikeImpl({
    this.author = const Author(),
    this.likedAt,
    this.updatedAt,
  });

  @override
  @JsonKey()
  final Author author;
  @override
  final DateTime? likedAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FeedLike(author: $author, likedAt: $likedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedLikeImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.likedAt, likedAt) || other.likedAt == likedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, author, likedAt, updatedAt);

  /// Create a copy of FeedLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedLikeImplCopyWith<_$FeedLikeImpl> get copyWith =>
      __$$FeedLikeImplCopyWithImpl<_$FeedLikeImpl>(this, _$identity);
}

abstract class _FeedLike implements FeedLike {
  const factory _FeedLike({
    final Author author,
    final DateTime? likedAt,
    final DateTime? updatedAt,
  }) = _$FeedLikeImpl;

  @override
  Author get author;
  @override
  DateTime? get likedAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of FeedLike
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedLikeImplCopyWith<_$FeedLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LikeResult {
  bool get isLiked => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;

  /// Create a copy of LikeResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LikeResultCopyWith<LikeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeResultCopyWith<$Res> {
  factory $LikeResultCopyWith(
    LikeResult value,
    $Res Function(LikeResult) then,
  ) = _$LikeResultCopyWithImpl<$Res, LikeResult>;
  @useResult
  $Res call({bool isLiked, int likeCount});
}

/// @nodoc
class _$LikeResultCopyWithImpl<$Res, $Val extends LikeResult>
    implements $LikeResultCopyWith<$Res> {
  _$LikeResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LikeResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLiked = null, Object? likeCount = null}) {
    return _then(
      _value.copyWith(
            isLiked: null == isLiked
                ? _value.isLiked
                : isLiked // ignore: cast_nullable_to_non_nullable
                      as bool,
            likeCount: null == likeCount
                ? _value.likeCount
                : likeCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LikeResultImplCopyWith<$Res>
    implements $LikeResultCopyWith<$Res> {
  factory _$$LikeResultImplCopyWith(
    _$LikeResultImpl value,
    $Res Function(_$LikeResultImpl) then,
  ) = __$$LikeResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLiked, int likeCount});
}

/// @nodoc
class __$$LikeResultImplCopyWithImpl<$Res>
    extends _$LikeResultCopyWithImpl<$Res, _$LikeResultImpl>
    implements _$$LikeResultImplCopyWith<$Res> {
  __$$LikeResultImplCopyWithImpl(
    _$LikeResultImpl _value,
    $Res Function(_$LikeResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LikeResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLiked = null, Object? likeCount = null}) {
    return _then(
      _$LikeResultImpl(
        isLiked: null == isLiked
            ? _value.isLiked
            : isLiked // ignore: cast_nullable_to_non_nullable
                  as bool,
        likeCount: null == likeCount
            ? _value.likeCount
            : likeCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$LikeResultImpl implements _LikeResult {
  const _$LikeResultImpl({this.isLiked = false, this.likeCount = 0});

  @override
  @JsonKey()
  final bool isLiked;
  @override
  @JsonKey()
  final int likeCount;

  @override
  String toString() {
    return 'LikeResult(isLiked: $isLiked, likeCount: $likeCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeResultImpl &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLiked, likeCount);

  /// Create a copy of LikeResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeResultImplCopyWith<_$LikeResultImpl> get copyWith =>
      __$$LikeResultImplCopyWithImpl<_$LikeResultImpl>(this, _$identity);
}

abstract class _LikeResult implements LikeResult {
  const factory _LikeResult({final bool isLiked, final int likeCount}) =
      _$LikeResultImpl;

  @override
  bool get isLiked;
  @override
  int get likeCount;

  /// Create a copy of LikeResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikeResultImplCopyWith<_$LikeResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
