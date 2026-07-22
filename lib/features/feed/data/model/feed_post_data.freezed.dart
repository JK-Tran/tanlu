// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_post_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FeedPostData _$FeedPostDataFromJson(Map<String, dynamic> json) {
  return _FeedPostData.fromJson(json);
}

/// @nodoc
mixin _$FeedPostData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'authorId')
  int? get authorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'centerId')
  int? get centerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'classId')
  int? get classId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPublic')
  bool? get isPublic => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'likeCount')
  int? get likeCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLikedByMe')
  bool? get isLikedByMe => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentCount')
  int? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  FeedAuthorData? get author => throw _privateConstructorUsedError;

  /// Serializes this FeedPostData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedPostData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedPostDataCopyWith<FeedPostData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedPostDataCopyWith<$Res> {
  factory $FeedPostDataCopyWith(
    FeedPostData value,
    $Res Function(FeedPostData) then,
  ) = _$FeedPostDataCopyWithImpl<$Res, FeedPostData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'authorId') int? authorId,
    @JsonKey(name: 'centerId') int? centerId,
    @JsonKey(name: 'classId') int? classId,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'images') List<String>? images,
    @JsonKey(name: 'isPublic') bool? isPublic,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'likeCount') int? likeCount,
    @JsonKey(name: 'isLikedByMe') bool? isLikedByMe,
    @JsonKey(name: 'commentCount') int? commentCount,
    @JsonKey(name: 'author') FeedAuthorData? author,
  });

  $FeedAuthorDataCopyWith<$Res>? get author;
}

/// @nodoc
class _$FeedPostDataCopyWithImpl<$Res, $Val extends FeedPostData>
    implements $FeedPostDataCopyWith<$Res> {
  _$FeedPostDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedPostData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? centerId = freezed,
    Object? classId = freezed,
    Object? content = freezed,
    Object? images = freezed,
    Object? isPublic = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? likeCount = freezed,
    Object? isLikedByMe = freezed,
    Object? commentCount = freezed,
    Object? author = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            authorId: freezed == authorId
                ? _value.authorId
                : authorId // ignore: cast_nullable_to_non_nullable
                      as int?,
            centerId: freezed == centerId
                ? _value.centerId
                : centerId // ignore: cast_nullable_to_non_nullable
                      as int?,
            classId: freezed == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as int?,
            content: freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String?,
            images: freezed == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            isPublic: freezed == isPublic
                ? _value.isPublic
                : isPublic // ignore: cast_nullable_to_non_nullable
                      as bool?,
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
            likeCount: freezed == likeCount
                ? _value.likeCount
                : likeCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            isLikedByMe: freezed == isLikedByMe
                ? _value.isLikedByMe
                : isLikedByMe // ignore: cast_nullable_to_non_nullable
                      as bool?,
            commentCount: freezed == commentCount
                ? _value.commentCount
                : commentCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            author: freezed == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                      as FeedAuthorData?,
          )
          as $Val,
    );
  }

  /// Create a copy of FeedPostData
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
abstract class _$$FeedPostDataImplCopyWith<$Res>
    implements $FeedPostDataCopyWith<$Res> {
  factory _$$FeedPostDataImplCopyWith(
    _$FeedPostDataImpl value,
    $Res Function(_$FeedPostDataImpl) then,
  ) = __$$FeedPostDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'authorId') int? authorId,
    @JsonKey(name: 'centerId') int? centerId,
    @JsonKey(name: 'classId') int? classId,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'images') List<String>? images,
    @JsonKey(name: 'isPublic') bool? isPublic,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'likeCount') int? likeCount,
    @JsonKey(name: 'isLikedByMe') bool? isLikedByMe,
    @JsonKey(name: 'commentCount') int? commentCount,
    @JsonKey(name: 'author') FeedAuthorData? author,
  });

  @override
  $FeedAuthorDataCopyWith<$Res>? get author;
}

/// @nodoc
class __$$FeedPostDataImplCopyWithImpl<$Res>
    extends _$FeedPostDataCopyWithImpl<$Res, _$FeedPostDataImpl>
    implements _$$FeedPostDataImplCopyWith<$Res> {
  __$$FeedPostDataImplCopyWithImpl(
    _$FeedPostDataImpl _value,
    $Res Function(_$FeedPostDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedPostData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? centerId = freezed,
    Object? classId = freezed,
    Object? content = freezed,
    Object? images = freezed,
    Object? isPublic = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? likeCount = freezed,
    Object? isLikedByMe = freezed,
    Object? commentCount = freezed,
    Object? author = freezed,
  }) {
    return _then(
      _$FeedPostDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        authorId: freezed == authorId
            ? _value.authorId
            : authorId // ignore: cast_nullable_to_non_nullable
                  as int?,
        centerId: freezed == centerId
            ? _value.centerId
            : centerId // ignore: cast_nullable_to_non_nullable
                  as int?,
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as int?,
        content: freezed == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
        images: freezed == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        isPublic: freezed == isPublic
            ? _value.isPublic
            : isPublic // ignore: cast_nullable_to_non_nullable
                  as bool?,
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
        likeCount: freezed == likeCount
            ? _value.likeCount
            : likeCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        isLikedByMe: freezed == isLikedByMe
            ? _value.isLikedByMe
            : isLikedByMe // ignore: cast_nullable_to_non_nullable
                  as bool?,
        commentCount: freezed == commentCount
            ? _value.commentCount
            : commentCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        author: freezed == author
            ? _value.author
            : author // ignore: cast_nullable_to_non_nullable
                  as FeedAuthorData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedPostDataImpl implements _FeedPostData {
  const _$FeedPostDataImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'authorId') this.authorId,
    @JsonKey(name: 'centerId') this.centerId,
    @JsonKey(name: 'classId') this.classId,
    @JsonKey(name: 'content') this.content,
    @JsonKey(name: 'images') final List<String>? images,
    @JsonKey(name: 'isPublic') this.isPublic,
    @JsonKey(name: 'status') this.status,
    @JsonKey(name: 'createdAt') this.createdAt,
    @JsonKey(name: 'updatedAt') this.updatedAt,
    @JsonKey(name: 'likeCount') this.likeCount,
    @JsonKey(name: 'isLikedByMe') this.isLikedByMe,
    @JsonKey(name: 'commentCount') this.commentCount,
    @JsonKey(name: 'author') this.author,
  }) : _images = images;

  factory _$FeedPostDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedPostDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'authorId')
  final int? authorId;
  @override
  @JsonKey(name: 'centerId')
  final int? centerId;
  @override
  @JsonKey(name: 'classId')
  final int? classId;
  @override
  @JsonKey(name: 'content')
  final String? content;
  final List<String>? _images;
  @override
  @JsonKey(name: 'images')
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'isPublic')
  final bool? isPublic;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'likeCount')
  final int? likeCount;
  @override
  @JsonKey(name: 'isLikedByMe')
  final bool? isLikedByMe;
  @override
  @JsonKey(name: 'commentCount')
  final int? commentCount;
  @override
  @JsonKey(name: 'author')
  final FeedAuthorData? author;

  @override
  String toString() {
    return 'FeedPostData(id: $id, authorId: $authorId, centerId: $centerId, classId: $classId, content: $content, images: $images, isPublic: $isPublic, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, likeCount: $likeCount, isLikedByMe: $isLikedByMe, commentCount: $commentCount, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedPostDataImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of FeedPostData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedPostDataImplCopyWith<_$FeedPostDataImpl> get copyWith =>
      __$$FeedPostDataImplCopyWithImpl<_$FeedPostDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedPostDataImplToJson(this);
  }
}

abstract class _FeedPostData implements FeedPostData {
  const factory _FeedPostData({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'authorId') final int? authorId,
    @JsonKey(name: 'centerId') final int? centerId,
    @JsonKey(name: 'classId') final int? classId,
    @JsonKey(name: 'content') final String? content,
    @JsonKey(name: 'images') final List<String>? images,
    @JsonKey(name: 'isPublic') final bool? isPublic,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: 'createdAt') final DateTime? createdAt,
    @JsonKey(name: 'updatedAt') final DateTime? updatedAt,
    @JsonKey(name: 'likeCount') final int? likeCount,
    @JsonKey(name: 'isLikedByMe') final bool? isLikedByMe,
    @JsonKey(name: 'commentCount') final int? commentCount,
    @JsonKey(name: 'author') final FeedAuthorData? author,
  }) = _$FeedPostDataImpl;

  factory _FeedPostData.fromJson(Map<String, dynamic> json) =
      _$FeedPostDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'authorId')
  int? get authorId;
  @override
  @JsonKey(name: 'centerId')
  int? get centerId;
  @override
  @JsonKey(name: 'classId')
  int? get classId;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'images')
  List<String>? get images;
  @override
  @JsonKey(name: 'isPublic')
  bool? get isPublic;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'likeCount')
  int? get likeCount;
  @override
  @JsonKey(name: 'isLikedByMe')
  bool? get isLikedByMe;
  @override
  @JsonKey(name: 'commentCount')
  int? get commentCount;
  @override
  @JsonKey(name: 'author')
  FeedAuthorData? get author;

  /// Create a copy of FeedPostData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedPostDataImplCopyWith<_$FeedPostDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
