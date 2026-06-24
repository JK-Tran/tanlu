// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FeedData _$FeedDataFromJson(Map<String, dynamic> json) {
  return _FeedData.fromJson(json);
}

/// @nodoc
mixin _$FeedData {
  @JsonKey(name: 'id', includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'authorId')
  String? get authorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'classId')
  String? get classId => throw _privateConstructorUsedError;
  @JsonKey(name: 'className')
  String? get className => throw _privateConstructorUsedError;
  @JsonKey(name: 'centerId')
  String? get centerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos')
  List<String>? get videos => throw _privateConstructorUsedError;
  @JsonKey(name: 'likeCount')
  int? get likeCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentCount')
  int? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'allowComments')
  bool? get allowComments => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPublic')
  bool? get isPublic => throw _privateConstructorUsedError;
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

  /// Serializes this FeedData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedDataCopyWith<FeedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDataCopyWith<$Res> {
  factory $FeedDataCopyWith(FeedData value, $Res Function(FeedData) then) =
      _$FeedDataCopyWithImpl<$Res, FeedData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'authorId') String? authorId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'className') String? className,
    @JsonKey(name: 'centerId') String? centerId,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'images') List<String>? images,
    @JsonKey(name: 'videos') List<String>? videos,
    @JsonKey(name: 'likeCount') int? likeCount,
    @JsonKey(name: 'commentCount') int? commentCount,
    @JsonKey(name: 'allowComments') bool? allowComments,
    @JsonKey(name: 'isPublic') bool? isPublic,
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
class _$FeedDataCopyWithImpl<$Res, $Val extends FeedData>
    implements $FeedDataCopyWith<$Res> {
  _$FeedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
    Object? role = freezed,
    Object? classId = freezed,
    Object? className = freezed,
    Object? centerId = freezed,
    Object? content = freezed,
    Object? images = freezed,
    Object? videos = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? allowComments = freezed,
    Object? isPublic = freezed,
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
            authorId: freezed == authorId
                ? _value.authorId
                : authorId // ignore: cast_nullable_to_non_nullable
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
            classId: freezed == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String?,
            className: freezed == className
                ? _value.className
                : className // ignore: cast_nullable_to_non_nullable
                      as String?,
            centerId: freezed == centerId
                ? _value.centerId
                : centerId // ignore: cast_nullable_to_non_nullable
                      as String?,
            content: freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String?,
            images: freezed == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            videos: freezed == videos
                ? _value.videos
                : videos // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            likeCount: freezed == likeCount
                ? _value.likeCount
                : likeCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            commentCount: freezed == commentCount
                ? _value.commentCount
                : commentCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            allowComments: freezed == allowComments
                ? _value.allowComments
                : allowComments // ignore: cast_nullable_to_non_nullable
                      as bool?,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeedDataImplCopyWith<$Res>
    implements $FeedDataCopyWith<$Res> {
  factory _$$FeedDataImplCopyWith(
    _$FeedDataImpl value,
    $Res Function(_$FeedDataImpl) then,
  ) = __$$FeedDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'authorId') String? authorId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'className') String? className,
    @JsonKey(name: 'centerId') String? centerId,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'images') List<String>? images,
    @JsonKey(name: 'videos') List<String>? videos,
    @JsonKey(name: 'likeCount') int? likeCount,
    @JsonKey(name: 'commentCount') int? commentCount,
    @JsonKey(name: 'allowComments') bool? allowComments,
    @JsonKey(name: 'isPublic') bool? isPublic,
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
class __$$FeedDataImplCopyWithImpl<$Res>
    extends _$FeedDataCopyWithImpl<$Res, _$FeedDataImpl>
    implements _$$FeedDataImplCopyWith<$Res> {
  __$$FeedDataImplCopyWithImpl(
    _$FeedDataImpl _value,
    $Res Function(_$FeedDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
    Object? role = freezed,
    Object? classId = freezed,
    Object? className = freezed,
    Object? centerId = freezed,
    Object? content = freezed,
    Object? images = freezed,
    Object? videos = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? allowComments = freezed,
    Object? isPublic = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$FeedDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        authorId: freezed == authorId
            ? _value.authorId
            : authorId // ignore: cast_nullable_to_non_nullable
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
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String?,
        className: freezed == className
            ? _value.className
            : className // ignore: cast_nullable_to_non_nullable
                  as String?,
        centerId: freezed == centerId
            ? _value.centerId
            : centerId // ignore: cast_nullable_to_non_nullable
                  as String?,
        content: freezed == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
        images: freezed == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        videos: freezed == videos
            ? _value._videos
            : videos // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        likeCount: freezed == likeCount
            ? _value.likeCount
            : likeCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        commentCount: freezed == commentCount
            ? _value.commentCount
            : commentCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        allowComments: freezed == allowComments
            ? _value.allowComments
            : allowComments // ignore: cast_nullable_to_non_nullable
                  as bool?,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedDataImpl implements _FeedData {
  const _$FeedDataImpl({
    @JsonKey(name: 'id', includeToJson: false) this.id,
    @JsonKey(name: 'authorId') this.authorId,
    @JsonKey(name: 'fullName') this.fullName,
    @JsonKey(name: 'avatar') this.avatar,
    @JsonKey(name: 'role') this.role,
    @JsonKey(name: 'classId') this.classId,
    @JsonKey(name: 'className') this.className,
    @JsonKey(name: 'centerId') this.centerId,
    @JsonKey(name: 'content') this.content,
    @JsonKey(name: 'images') final List<String>? images,
    @JsonKey(name: 'videos') final List<String>? videos,
    @JsonKey(name: 'likeCount') this.likeCount,
    @JsonKey(name: 'commentCount') this.commentCount,
    @JsonKey(name: 'allowComments') this.allowComments,
    @JsonKey(name: 'isPublic') this.isPublic,
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
  }) : _images = images,
       _videos = videos;

  factory _$FeedDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedDataImplFromJson(json);

  @override
  @JsonKey(name: 'id', includeToJson: false)
  final String? id;
  @override
  @JsonKey(name: 'authorId')
  final String? authorId;
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
  @JsonKey(name: 'classId')
  final String? classId;
  @override
  @JsonKey(name: 'className')
  final String? className;
  @override
  @JsonKey(name: 'centerId')
  final String? centerId;
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

  final List<String>? _videos;
  @override
  @JsonKey(name: 'videos')
  List<String>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'likeCount')
  final int? likeCount;
  @override
  @JsonKey(name: 'commentCount')
  final int? commentCount;
  @override
  @JsonKey(name: 'allowComments')
  final bool? allowComments;
  @override
  @JsonKey(name: 'isPublic')
  final bool? isPublic;
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
    return 'FeedData(id: $id, authorId: $authorId, fullName: $fullName, avatar: $avatar, role: $role, classId: $classId, className: $className, centerId: $centerId, content: $content, images: $images, videos: $videos, likeCount: $likeCount, commentCount: $commentCount, allowComments: $allowComments, isPublic: $isPublic, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.centerId, centerId) ||
                other.centerId == centerId) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.allowComments, allowComments) ||
                other.allowComments == allowComments) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
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
    authorId,
    fullName,
    avatar,
    role,
    classId,
    className,
    centerId,
    content,
    const DeepCollectionEquality().hash(_images),
    const DeepCollectionEquality().hash(_videos),
    likeCount,
    commentCount,
    allowComments,
    isPublic,
    status,
    createdAt,
    updatedAt,
  );

  /// Create a copy of FeedData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedDataImplCopyWith<_$FeedDataImpl> get copyWith =>
      __$$FeedDataImplCopyWithImpl<_$FeedDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedDataImplToJson(this);
  }
}

abstract class _FeedData implements FeedData {
  const factory _FeedData({
    @JsonKey(name: 'id', includeToJson: false) final String? id,
    @JsonKey(name: 'authorId') final String? authorId,
    @JsonKey(name: 'fullName') final String? fullName,
    @JsonKey(name: 'avatar') final String? avatar,
    @JsonKey(name: 'role') final String? role,
    @JsonKey(name: 'classId') final String? classId,
    @JsonKey(name: 'className') final String? className,
    @JsonKey(name: 'centerId') final String? centerId,
    @JsonKey(name: 'content') final String? content,
    @JsonKey(name: 'images') final List<String>? images,
    @JsonKey(name: 'videos') final List<String>? videos,
    @JsonKey(name: 'likeCount') final int? likeCount,
    @JsonKey(name: 'commentCount') final int? commentCount,
    @JsonKey(name: 'allowComments') final bool? allowComments,
    @JsonKey(name: 'isPublic') final bool? isPublic,
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
  }) = _$FeedDataImpl;

  factory _FeedData.fromJson(Map<String, dynamic> json) =
      _$FeedDataImpl.fromJson;

  @override
  @JsonKey(name: 'id', includeToJson: false)
  String? get id;
  @override
  @JsonKey(name: 'authorId')
  String? get authorId;
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
  @JsonKey(name: 'classId')
  String? get classId;
  @override
  @JsonKey(name: 'className')
  String? get className;
  @override
  @JsonKey(name: 'centerId')
  String? get centerId;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'images')
  List<String>? get images;
  @override
  @JsonKey(name: 'videos')
  List<String>? get videos;
  @override
  @JsonKey(name: 'likeCount')
  int? get likeCount;
  @override
  @JsonKey(name: 'commentCount')
  int? get commentCount;
  @override
  @JsonKey(name: 'allowComments')
  bool? get allowComments;
  @override
  @JsonKey(name: 'isPublic')
  bool? get isPublic;
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

  /// Create a copy of FeedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedDataImplCopyWith<_$FeedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
