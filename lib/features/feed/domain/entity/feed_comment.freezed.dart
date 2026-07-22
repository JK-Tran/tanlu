// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FeedComment {
  int get id => throw _privateConstructorUsedError;
  int get postId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  bool get isLikedByMe => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  FeedAuthor? get author => throw _privateConstructorUsedError;
  List<FeedComment> get replies => throw _privateConstructorUsedError;

  /// Create a copy of FeedComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedCommentCopyWith<FeedComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCommentCopyWith<$Res> {
  factory $FeedCommentCopyWith(
    FeedComment value,
    $Res Function(FeedComment) then,
  ) = _$FeedCommentCopyWithImpl<$Res, FeedComment>;
  @useResult
  $Res call({
    int id,
    int postId,
    int userId,
    String content,
    int? parentId,
    int likeCount,
    bool isLikedByMe,
    DateTime? createdAt,
    DateTime? updatedAt,
    FeedAuthor? author,
    List<FeedComment> replies,
  });

  $FeedAuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$FeedCommentCopyWithImpl<$Res, $Val extends FeedComment>
    implements $FeedCommentCopyWith<$Res> {
  _$FeedCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? userId = null,
    Object? content = null,
    Object? parentId = freezed,
    Object? likeCount = null,
    Object? isLikedByMe = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? author = freezed,
    Object? replies = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            postId: null == postId
                ? _value.postId
                : postId // ignore: cast_nullable_to_non_nullable
                      as int,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            likeCount: null == likeCount
                ? _value.likeCount
                : likeCount // ignore: cast_nullable_to_non_nullable
                      as int,
            isLikedByMe: null == isLikedByMe
                ? _value.isLikedByMe
                : isLikedByMe // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            author: freezed == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                      as FeedAuthor?,
            replies: null == replies
                ? _value.replies
                : replies // ignore: cast_nullable_to_non_nullable
                      as List<FeedComment>,
          )
          as $Val,
    );
  }

  /// Create a copy of FeedComment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedAuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $FeedAuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedCommentImplCopyWith<$Res>
    implements $FeedCommentCopyWith<$Res> {
  factory _$$FeedCommentImplCopyWith(
    _$FeedCommentImpl value,
    $Res Function(_$FeedCommentImpl) then,
  ) = __$$FeedCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int postId,
    int userId,
    String content,
    int? parentId,
    int likeCount,
    bool isLikedByMe,
    DateTime? createdAt,
    DateTime? updatedAt,
    FeedAuthor? author,
    List<FeedComment> replies,
  });

  @override
  $FeedAuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$$FeedCommentImplCopyWithImpl<$Res>
    extends _$FeedCommentCopyWithImpl<$Res, _$FeedCommentImpl>
    implements _$$FeedCommentImplCopyWith<$Res> {
  __$$FeedCommentImplCopyWithImpl(
    _$FeedCommentImpl _value,
    $Res Function(_$FeedCommentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? userId = null,
    Object? content = null,
    Object? parentId = freezed,
    Object? likeCount = null,
    Object? isLikedByMe = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? author = freezed,
    Object? replies = null,
  }) {
    return _then(
      _$FeedCommentImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        postId: null == postId
            ? _value.postId
            : postId // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        likeCount: null == likeCount
            ? _value.likeCount
            : likeCount // ignore: cast_nullable_to_non_nullable
                  as int,
        isLikedByMe: null == isLikedByMe
            ? _value.isLikedByMe
            : isLikedByMe // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        author: freezed == author
            ? _value.author
            : author // ignore: cast_nullable_to_non_nullable
                  as FeedAuthor?,
        replies: null == replies
            ? _value._replies
            : replies // ignore: cast_nullable_to_non_nullable
                  as List<FeedComment>,
      ),
    );
  }
}

/// @nodoc

class _$FeedCommentImpl implements _FeedComment {
  const _$FeedCommentImpl({
    this.id = 0,
    this.postId = 0,
    this.userId = 0,
    this.content = '',
    this.parentId,
    this.likeCount = 0,
    this.isLikedByMe = false,
    this.createdAt,
    this.updatedAt,
    this.author,
    final List<FeedComment> replies = const [],
  }) : _replies = replies;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int postId;
  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final String content;
  @override
  final int? parentId;
  @override
  @JsonKey()
  final int likeCount;
  @override
  @JsonKey()
  final bool isLikedByMe;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final FeedAuthor? author;
  final List<FeedComment> _replies;
  @override
  @JsonKey()
  List<FeedComment> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'FeedComment(id: $id, postId: $postId, userId: $userId, content: $content, parentId: $parentId, likeCount: $likeCount, isLikedByMe: $isLikedByMe, createdAt: $createdAt, updatedAt: $updatedAt, author: $author, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedCommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.isLikedByMe, isLikedByMe) ||
                other.isLikedByMe == isLikedByMe) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    postId,
    userId,
    content,
    parentId,
    likeCount,
    isLikedByMe,
    createdAt,
    updatedAt,
    author,
    const DeepCollectionEquality().hash(_replies),
  );

  /// Create a copy of FeedComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedCommentImplCopyWith<_$FeedCommentImpl> get copyWith =>
      __$$FeedCommentImplCopyWithImpl<_$FeedCommentImpl>(this, _$identity);
}

abstract class _FeedComment implements FeedComment {
  const factory _FeedComment({
    final int id,
    final int postId,
    final int userId,
    final String content,
    final int? parentId,
    final int likeCount,
    final bool isLikedByMe,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final FeedAuthor? author,
    final List<FeedComment> replies,
  }) = _$FeedCommentImpl;

  @override
  int get id;
  @override
  int get postId;
  @override
  int get userId;
  @override
  String get content;
  @override
  int? get parentId;
  @override
  int get likeCount;
  @override
  bool get isLikedByMe;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  FeedAuthor? get author;
  @override
  List<FeedComment> get replies;

  /// Create a copy of FeedComment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedCommentImplCopyWith<_$FeedCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
