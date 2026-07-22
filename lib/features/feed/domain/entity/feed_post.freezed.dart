// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FeedPost {
  int get id => throw _privateConstructorUsedError;
  int get authorId => throw _privateConstructorUsedError;
  int get centerId => throw _privateConstructorUsedError;
  int get classId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  bool get isLikedByMe => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  FeedAuthor? get author => throw _privateConstructorUsedError;

  /// Create a copy of FeedPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedPostCopyWith<FeedPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedPostCopyWith<$Res> {
  factory $FeedPostCopyWith(FeedPost value, $Res Function(FeedPost) then) =
      _$FeedPostCopyWithImpl<$Res, FeedPost>;
  @useResult
  $Res call({
    int id,
    int authorId,
    int centerId,
    int classId,
    String content,
    List<String> images,
    bool isPublic,
    String status,
    DateTime? createdAt,
    DateTime? updatedAt,
    int likeCount,
    bool isLikedByMe,
    int commentCount,
    FeedAuthor? author,
  });

  $FeedAuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$FeedPostCopyWithImpl<$Res, $Val extends FeedPost>
    implements $FeedPostCopyWith<$Res> {
  _$FeedPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
    Object? centerId = null,
    Object? classId = null,
    Object? content = null,
    Object? images = null,
    Object? isPublic = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? likeCount = null,
    Object? isLikedByMe = null,
    Object? commentCount = null,
    Object? author = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            authorId: null == authorId
                ? _value.authorId
                : authorId // ignore: cast_nullable_to_non_nullable
                      as int,
            centerId: null == centerId
                ? _value.centerId
                : centerId // ignore: cast_nullable_to_non_nullable
                      as int,
            classId: null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as int,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            isPublic: null == isPublic
                ? _value.isPublic
                : isPublic // ignore: cast_nullable_to_non_nullable
                      as bool,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            likeCount: null == likeCount
                ? _value.likeCount
                : likeCount // ignore: cast_nullable_to_non_nullable
                      as int,
            isLikedByMe: null == isLikedByMe
                ? _value.isLikedByMe
                : isLikedByMe // ignore: cast_nullable_to_non_nullable
                      as bool,
            commentCount: null == commentCount
                ? _value.commentCount
                : commentCount // ignore: cast_nullable_to_non_nullable
                      as int,
            author: freezed == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                      as FeedAuthor?,
          )
          as $Val,
    );
  }

  /// Create a copy of FeedPost
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
abstract class _$$FeedPostImplCopyWith<$Res>
    implements $FeedPostCopyWith<$Res> {
  factory _$$FeedPostImplCopyWith(
    _$FeedPostImpl value,
    $Res Function(_$FeedPostImpl) then,
  ) = __$$FeedPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int authorId,
    int centerId,
    int classId,
    String content,
    List<String> images,
    bool isPublic,
    String status,
    DateTime? createdAt,
    DateTime? updatedAt,
    int likeCount,
    bool isLikedByMe,
    int commentCount,
    FeedAuthor? author,
  });

  @override
  $FeedAuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$$FeedPostImplCopyWithImpl<$Res>
    extends _$FeedPostCopyWithImpl<$Res, _$FeedPostImpl>
    implements _$$FeedPostImplCopyWith<$Res> {
  __$$FeedPostImplCopyWithImpl(
    _$FeedPostImpl _value,
    $Res Function(_$FeedPostImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
    Object? centerId = null,
    Object? classId = null,
    Object? content = null,
    Object? images = null,
    Object? isPublic = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? likeCount = null,
    Object? isLikedByMe = null,
    Object? commentCount = null,
    Object? author = freezed,
  }) {
    return _then(
      _$FeedPostImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        authorId: null == authorId
            ? _value.authorId
            : authorId // ignore: cast_nullable_to_non_nullable
                  as int,
        centerId: null == centerId
            ? _value.centerId
            : centerId // ignore: cast_nullable_to_non_nullable
                  as int,
        classId: null == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as int,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        isPublic: null == isPublic
            ? _value.isPublic
            : isPublic // ignore: cast_nullable_to_non_nullable
                  as bool,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        likeCount: null == likeCount
            ? _value.likeCount
            : likeCount // ignore: cast_nullable_to_non_nullable
                  as int,
        isLikedByMe: null == isLikedByMe
            ? _value.isLikedByMe
            : isLikedByMe // ignore: cast_nullable_to_non_nullable
                  as bool,
        commentCount: null == commentCount
            ? _value.commentCount
            : commentCount // ignore: cast_nullable_to_non_nullable
                  as int,
        author: freezed == author
            ? _value.author
            : author // ignore: cast_nullable_to_non_nullable
                  as FeedAuthor?,
      ),
    );
  }
}

/// @nodoc

class _$FeedPostImpl implements _FeedPost {
  const _$FeedPostImpl({
    this.id = 0,
    this.authorId = 0,
    this.centerId = 0,
    this.classId = 0,
    this.content = '',
    final List<String> images = const [],
    this.isPublic = false,
    this.status = '',
    this.createdAt,
    this.updatedAt,
    this.likeCount = 0,
    this.isLikedByMe = false,
    this.commentCount = 0,
    this.author,
  }) : _images = images;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int authorId;
  @override
  @JsonKey()
  final int centerId;
  @override
  @JsonKey()
  final int classId;
  @override
  @JsonKey()
  final String content;
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final bool isPublic;
  @override
  @JsonKey()
  final String status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final int likeCount;
  @override
  @JsonKey()
  final bool isLikedByMe;
  @override
  @JsonKey()
  final int commentCount;
  @override
  final FeedAuthor? author;

  @override
  String toString() {
    return 'FeedPost(id: $id, authorId: $authorId, centerId: $centerId, classId: $classId, content: $content, images: $images, isPublic: $isPublic, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, likeCount: $likeCount, isLikedByMe: $isLikedByMe, commentCount: $commentCount, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedPostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.centerId, centerId) ||
                other.centerId == centerId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.isLikedByMe, isLikedByMe) ||
                other.isLikedByMe == isLikedByMe) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.author, author) || other.author == author));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    authorId,
    centerId,
    classId,
    content,
    const DeepCollectionEquality().hash(_images),
    isPublic,
    status,
    createdAt,
    updatedAt,
    likeCount,
    isLikedByMe,
    commentCount,
    author,
  );

  /// Create a copy of FeedPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedPostImplCopyWith<_$FeedPostImpl> get copyWith =>
      __$$FeedPostImplCopyWithImpl<_$FeedPostImpl>(this, _$identity);
}

abstract class _FeedPost implements FeedPost {
  const factory _FeedPost({
    final int id,
    final int authorId,
    final int centerId,
    final int classId,
    final String content,
    final List<String> images,
    final bool isPublic,
    final String status,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final int likeCount,
    final bool isLikedByMe,
    final int commentCount,
    final FeedAuthor? author,
  }) = _$FeedPostImpl;

  @override
  int get id;
  @override
  int get authorId;
  @override
  int get centerId;
  @override
  int get classId;
  @override
  String get content;
  @override
  List<String> get images;
  @override
  bool get isPublic;
  @override
  String get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int get likeCount;
  @override
  bool get isLikedByMe;
  @override
  int get commentCount;
  @override
  FeedAuthor? get author;

  /// Create a copy of FeedPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedPostImplCopyWith<_$FeedPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
