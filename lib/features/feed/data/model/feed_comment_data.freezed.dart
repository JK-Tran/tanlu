// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_comment_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FeedCommentData _$FeedCommentDataFromJson(Map<String, dynamic> json) {
  return _FeedCommentData.fromJson(json);
}

/// @nodoc
mixin _$FeedCommentData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'postId')
  int? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentId')
  int? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'likeCount')
  int? get likeCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLikedByMe')
  bool? get isLikedByMe => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  FeedAuthorData? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'replies')
  List<FeedCommentData>? get replies => throw _privateConstructorUsedError;

  /// Serializes this FeedCommentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedCommentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedCommentDataCopyWith<FeedCommentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCommentDataCopyWith<$Res> {
  factory $FeedCommentDataCopyWith(
    FeedCommentData value,
    $Res Function(FeedCommentData) then,
  ) = _$FeedCommentDataCopyWithImpl<$Res, FeedCommentData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'postId') int? postId,
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'parentId') int? parentId,
    @JsonKey(name: 'likeCount') int? likeCount,
    @JsonKey(name: 'isLikedByMe') bool? isLikedByMe,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'author') FeedAuthorData? author,
    @JsonKey(name: 'replies') List<FeedCommentData>? replies,
  });

  $FeedAuthorDataCopyWith<$Res>? get author;
}

/// @nodoc
class _$FeedCommentDataCopyWithImpl<$Res, $Val extends FeedCommentData>
    implements $FeedCommentDataCopyWith<$Res> {
  _$FeedCommentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedCommentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? userId = freezed,
    Object? content = freezed,
    Object? parentId = freezed,
    Object? likeCount = freezed,
    Object? isLikedByMe = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? author = freezed,
    Object? replies = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            postId: freezed == postId
                ? _value.postId
                : postId // ignore: cast_nullable_to_non_nullable
                      as int?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
            content: freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String?,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            likeCount: freezed == likeCount
                ? _value.likeCount
                : likeCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            isLikedByMe: freezed == isLikedByMe
                ? _value.isLikedByMe
                : isLikedByMe // ignore: cast_nullable_to_non_nullable
                      as bool?,
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
                      as FeedAuthorData?,
            replies: freezed == replies
                ? _value.replies
                : replies // ignore: cast_nullable_to_non_nullable
                      as List<FeedCommentData>?,
          )
          as $Val,
    );
  }

  /// Create a copy of FeedCommentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedAuthorDataCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $FeedAuthorDataCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedCommentDataImplCopyWith<$Res>
    implements $FeedCommentDataCopyWith<$Res> {
  factory _$$FeedCommentDataImplCopyWith(
    _$FeedCommentDataImpl value,
    $Res Function(_$FeedCommentDataImpl) then,
  ) = __$$FeedCommentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'postId') int? postId,
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'parentId') int? parentId,
    @JsonKey(name: 'likeCount') int? likeCount,
    @JsonKey(name: 'isLikedByMe') bool? isLikedByMe,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'author') FeedAuthorData? author,
    @JsonKey(name: 'replies') List<FeedCommentData>? replies,
  });

  @override
  $FeedAuthorDataCopyWith<$Res>? get author;
}

/// @nodoc
class __$$FeedCommentDataImplCopyWithImpl<$Res>
    extends _$FeedCommentDataCopyWithImpl<$Res, _$FeedCommentDataImpl>
    implements _$$FeedCommentDataImplCopyWith<$Res> {
  __$$FeedCommentDataImplCopyWithImpl(
    _$FeedCommentDataImpl _value,
    $Res Function(_$FeedCommentDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedCommentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? userId = freezed,
    Object? content = freezed,
    Object? parentId = freezed,
    Object? likeCount = freezed,
    Object? isLikedByMe = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? author = freezed,
    Object? replies = freezed,
  }) {
    return _then(
      _$FeedCommentDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        postId: freezed == postId
            ? _value.postId
            : postId // ignore: cast_nullable_to_non_nullable
                  as int?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        content: freezed == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        likeCount: freezed == likeCount
            ? _value.likeCount
            : likeCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        isLikedByMe: freezed == isLikedByMe
            ? _value.isLikedByMe
            : isLikedByMe // ignore: cast_nullable_to_non_nullable
                  as bool?,
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
                  as FeedAuthorData?,
        replies: freezed == replies
            ? _value._replies
            : replies // ignore: cast_nullable_to_non_nullable
                  as List<FeedCommentData>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedCommentDataImpl implements _FeedCommentData {
  const _$FeedCommentDataImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'postId') this.postId,
    @JsonKey(name: 'userId') this.userId,
    @JsonKey(name: 'content') this.content,
    @JsonKey(name: 'parentId') this.parentId,
    @JsonKey(name: 'likeCount') this.likeCount,
    @JsonKey(name: 'isLikedByMe') this.isLikedByMe,
    @JsonKey(name: 'createdAt') this.createdAt,
    @JsonKey(name: 'updatedAt') this.updatedAt,
    @JsonKey(name: 'author') this.author,
    @JsonKey(name: 'replies') final List<FeedCommentData>? replies,
  }) : _replies = replies;

  factory _$FeedCommentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedCommentDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'postId')
  final int? postId;
  @override
  @JsonKey(name: 'userId')
  final int? userId;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'parentId')
  final int? parentId;
  @override
  @JsonKey(name: 'likeCount')
  final int? likeCount;
  @override
  @JsonKey(name: 'isLikedByMe')
  final bool? isLikedByMe;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'author')
  final FeedAuthorData? author;
  final List<FeedCommentData>? _replies;
  @override
  @JsonKey(name: 'replies')
  List<FeedCommentData>? get replies {
    final value = _replies;
    if (value == null) return null;
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FeedCommentData(id: $id, postId: $postId, userId: $userId, content: $content, parentId: $parentId, likeCount: $likeCount, isLikedByMe: $isLikedByMe, createdAt: $createdAt, updatedAt: $updatedAt, author: $author, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedCommentDataImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of FeedCommentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedCommentDataImplCopyWith<_$FeedCommentDataImpl> get copyWith =>
      __$$FeedCommentDataImplCopyWithImpl<_$FeedCommentDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedCommentDataImplToJson(this);
  }
}

abstract class _FeedCommentData implements FeedCommentData {
  const factory _FeedCommentData({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'postId') final int? postId,
    @JsonKey(name: 'userId') final int? userId,
    @JsonKey(name: 'content') final String? content,
    @JsonKey(name: 'parentId') final int? parentId,
    @JsonKey(name: 'likeCount') final int? likeCount,
    @JsonKey(name: 'isLikedByMe') final bool? isLikedByMe,
    @JsonKey(name: 'createdAt') final DateTime? createdAt,
    @JsonKey(name: 'updatedAt') final DateTime? updatedAt,
    @JsonKey(name: 'author') final FeedAuthorData? author,
    @JsonKey(name: 'replies') final List<FeedCommentData>? replies,
  }) = _$FeedCommentDataImpl;

  factory _FeedCommentData.fromJson(Map<String, dynamic> json) =
      _$FeedCommentDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'postId')
  int? get postId;
  @override
  @JsonKey(name: 'userId')
  int? get userId;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'parentId')
  int? get parentId;
  @override
  @JsonKey(name: 'likeCount')
  int? get likeCount;
  @override
  @JsonKey(name: 'isLikedByMe')
  bool? get isLikedByMe;
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'author')
  FeedAuthorData? get author;
  @override
  @JsonKey(name: 'replies')
  List<FeedCommentData>? get replies;

  /// Create a copy of FeedCommentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedCommentDataImplCopyWith<_$FeedCommentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
