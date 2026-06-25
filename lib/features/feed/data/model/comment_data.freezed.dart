// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommentData _$CommentDataFromJson(Map<String, dynamic> json) {
  return _CommentData.fromJson(json);
}

/// @nodoc
mixin _$CommentData {
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
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentId')
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'likeCount')
  int? get likeCount => throw _privateConstructorUsedError;
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

  /// Serializes this CommentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentDataCopyWith<CommentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDataCopyWith<$Res> {
  factory $CommentDataCopyWith(
    CommentData value,
    $Res Function(CommentData) then,
  ) = _$CommentDataCopyWithImpl<$Res, CommentData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'authorId') String? authorId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'parentId') String? parentId,
    @JsonKey(name: 'likeCount') int? likeCount,
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
class _$CommentDataCopyWithImpl<$Res, $Val extends CommentData>
    implements $CommentDataCopyWith<$Res> {
  _$CommentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
    Object? role = freezed,
    Object? content = freezed,
    Object? parentId = freezed,
    Object? likeCount = freezed,
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
            content: freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String?,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as String?,
            likeCount: freezed == likeCount
                ? _value.likeCount
                : likeCount // ignore: cast_nullable_to_non_nullable
                      as int?,
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
abstract class _$$CommentDataImplCopyWith<$Res>
    implements $CommentDataCopyWith<$Res> {
  factory _$$CommentDataImplCopyWith(
    _$CommentDataImpl value,
    $Res Function(_$CommentDataImpl) then,
  ) = __$$CommentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'authorId') String? authorId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'parentId') String? parentId,
    @JsonKey(name: 'likeCount') int? likeCount,
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
class __$$CommentDataImplCopyWithImpl<$Res>
    extends _$CommentDataCopyWithImpl<$Res, _$CommentDataImpl>
    implements _$$CommentDataImplCopyWith<$Res> {
  __$$CommentDataImplCopyWithImpl(
    _$CommentDataImpl _value,
    $Res Function(_$CommentDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
    Object? role = freezed,
    Object? content = freezed,
    Object? parentId = freezed,
    Object? likeCount = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$CommentDataImpl(
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
        content: freezed == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as String?,
        likeCount: freezed == likeCount
            ? _value.likeCount
            : likeCount // ignore: cast_nullable_to_non_nullable
                  as int?,
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
class _$CommentDataImpl implements _CommentData {
  const _$CommentDataImpl({
    @JsonKey(name: 'id', includeToJson: false) this.id,
    @JsonKey(name: 'authorId') this.authorId,
    @JsonKey(name: 'fullName') this.fullName,
    @JsonKey(name: 'avatar') this.avatar,
    @JsonKey(name: 'role') this.role,
    @JsonKey(name: 'content') this.content,
    @JsonKey(name: 'parentId') this.parentId,
    @JsonKey(name: 'likeCount') this.likeCount,
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

  factory _$CommentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentDataImplFromJson(json);

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
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'parentId')
  final String? parentId;
  @override
  @JsonKey(name: 'likeCount')
  final int? likeCount;
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
    return 'CommentData(id: $id, authorId: $authorId, fullName: $fullName, avatar: $avatar, role: $role, content: $content, parentId: $parentId, likeCount: $likeCount, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
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
    content,
    parentId,
    likeCount,
    status,
    createdAt,
    updatedAt,
  );

  /// Create a copy of CommentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentDataImplCopyWith<_$CommentDataImpl> get copyWith =>
      __$$CommentDataImplCopyWithImpl<_$CommentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentDataImplToJson(this);
  }
}

abstract class _CommentData implements CommentData {
  const factory _CommentData({
    @JsonKey(name: 'id', includeToJson: false) final String? id,
    @JsonKey(name: 'authorId') final String? authorId,
    @JsonKey(name: 'fullName') final String? fullName,
    @JsonKey(name: 'avatar') final String? avatar,
    @JsonKey(name: 'role') final String? role,
    @JsonKey(name: 'content') final String? content,
    @JsonKey(name: 'parentId') final String? parentId,
    @JsonKey(name: 'likeCount') final int? likeCount,
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
  }) = _$CommentDataImpl;

  factory _CommentData.fromJson(Map<String, dynamic> json) =
      _$CommentDataImpl.fromJson;

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
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'parentId')
  String? get parentId;
  @override
  @JsonKey(name: 'likeCount')
  int? get likeCount;
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

  /// Create a copy of CommentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentDataImplCopyWith<_$CommentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
