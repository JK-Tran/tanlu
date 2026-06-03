// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FileData _$FileDataFromJson(Map<String, dynamic> json) {
  return _FileData.fromJson(json);
}

/// @nodoc
mixin _$FileData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  int? get monthlyReportId => throw _privateConstructorUsedError;
  @JsonKey()
  int? get uploadedBy => throw _privateConstructorUsedError;
  @JsonKey()
  String? get title => throw _privateConstructorUsedError;
  @JsonKey()
  String? get description => throw _privateConstructorUsedError;
  @JsonKey()
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey()
  String? get fileUrl => throw _privateConstructorUsedError;
  @JsonKey()
  String? get fileType => throw _privateConstructorUsedError;
  @JsonKey()
  int? get fileSize => throw _privateConstructorUsedError;
  @JsonKey()
  int? get sortOrder => throw _privateConstructorUsedError;
  @JsonKey()
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this FileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileDataCopyWith<FileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileDataCopyWith<$Res> {
  factory $FileDataCopyWith(FileData value, $Res Function(FileData) then) =
      _$FileDataCopyWithImpl<$Res, FileData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? monthlyReportId,
    @JsonKey() int? uploadedBy,
    @JsonKey() String? title,
    @JsonKey() String? description,
    @JsonKey() String? fileName,
    @JsonKey() String? fileUrl,
    @JsonKey() String? fileType,
    @JsonKey() int? fileSize,
    @JsonKey() int? sortOrder,
    @JsonKey() String? createdAt,
  });
}

/// @nodoc
class _$FileDataCopyWithImpl<$Res, $Val extends FileData>
    implements $FileDataCopyWith<$Res> {
  _$FileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? monthlyReportId = freezed,
    Object? uploadedBy = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? fileName = freezed,
    Object? fileUrl = freezed,
    Object? fileType = freezed,
    Object? fileSize = freezed,
    Object? sortOrder = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            monthlyReportId: freezed == monthlyReportId
                ? _value.monthlyReportId
                : monthlyReportId // ignore: cast_nullable_to_non_nullable
                      as int?,
            uploadedBy: freezed == uploadedBy
                ? _value.uploadedBy
                : uploadedBy // ignore: cast_nullable_to_non_nullable
                      as int?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            fileName: freezed == fileName
                ? _value.fileName
                : fileName // ignore: cast_nullable_to_non_nullable
                      as String?,
            fileUrl: freezed == fileUrl
                ? _value.fileUrl
                : fileUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            fileType: freezed == fileType
                ? _value.fileType
                : fileType // ignore: cast_nullable_to_non_nullable
                      as String?,
            fileSize: freezed == fileSize
                ? _value.fileSize
                : fileSize // ignore: cast_nullable_to_non_nullable
                      as int?,
            sortOrder: freezed == sortOrder
                ? _value.sortOrder
                : sortOrder // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FileDataImplCopyWith<$Res>
    implements $FileDataCopyWith<$Res> {
  factory _$$FileDataImplCopyWith(
    _$FileDataImpl value,
    $Res Function(_$FileDataImpl) then,
  ) = __$$FileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? monthlyReportId,
    @JsonKey() int? uploadedBy,
    @JsonKey() String? title,
    @JsonKey() String? description,
    @JsonKey() String? fileName,
    @JsonKey() String? fileUrl,
    @JsonKey() String? fileType,
    @JsonKey() int? fileSize,
    @JsonKey() int? sortOrder,
    @JsonKey() String? createdAt,
  });
}

/// @nodoc
class __$$FileDataImplCopyWithImpl<$Res>
    extends _$FileDataCopyWithImpl<$Res, _$FileDataImpl>
    implements _$$FileDataImplCopyWith<$Res> {
  __$$FileDataImplCopyWithImpl(
    _$FileDataImpl _value,
    $Res Function(_$FileDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? monthlyReportId = freezed,
    Object? uploadedBy = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? fileName = freezed,
    Object? fileUrl = freezed,
    Object? fileType = freezed,
    Object? fileSize = freezed,
    Object? sortOrder = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$FileDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        monthlyReportId: freezed == monthlyReportId
            ? _value.monthlyReportId
            : monthlyReportId // ignore: cast_nullable_to_non_nullable
                  as int?,
        uploadedBy: freezed == uploadedBy
            ? _value.uploadedBy
            : uploadedBy // ignore: cast_nullable_to_non_nullable
                  as int?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        fileName: freezed == fileName
            ? _value.fileName
            : fileName // ignore: cast_nullable_to_non_nullable
                  as String?,
        fileUrl: freezed == fileUrl
            ? _value.fileUrl
            : fileUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        fileType: freezed == fileType
            ? _value.fileType
            : fileType // ignore: cast_nullable_to_non_nullable
                  as String?,
        fileSize: freezed == fileSize
            ? _value.fileSize
            : fileSize // ignore: cast_nullable_to_non_nullable
                  as int?,
        sortOrder: freezed == sortOrder
            ? _value.sortOrder
            : sortOrder // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FileDataImpl extends _FileData {
  const _$FileDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.monthlyReportId,
    @JsonKey() this.uploadedBy,
    @JsonKey() this.title,
    @JsonKey() this.description,
    @JsonKey() this.fileName,
    @JsonKey() this.fileUrl,
    @JsonKey() this.fileType,
    @JsonKey() this.fileSize,
    @JsonKey() this.sortOrder,
    @JsonKey() this.createdAt,
  }) : super._();

  factory _$FileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int? monthlyReportId;
  @override
  @JsonKey()
  final int? uploadedBy;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final String? fileName;
  @override
  @JsonKey()
  final String? fileUrl;
  @override
  @JsonKey()
  final String? fileType;
  @override
  @JsonKey()
  final int? fileSize;
  @override
  @JsonKey()
  final int? sortOrder;
  @override
  @JsonKey()
  final String? createdAt;

  @override
  String toString() {
    return 'FileData(id: $id, monthlyReportId: $monthlyReportId, uploadedBy: $uploadedBy, title: $title, description: $description, fileName: $fileName, fileUrl: $fileUrl, fileType: $fileType, fileSize: $fileSize, sortOrder: $sortOrder, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.monthlyReportId, monthlyReportId) ||
                other.monthlyReportId == monthlyReportId) &&
            (identical(other.uploadedBy, uploadedBy) ||
                other.uploadedBy == uploadedBy) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    monthlyReportId,
    uploadedBy,
    title,
    description,
    fileName,
    fileUrl,
    fileType,
    fileSize,
    sortOrder,
    createdAt,
  );

  /// Create a copy of FileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileDataImplCopyWith<_$FileDataImpl> get copyWith =>
      __$$FileDataImplCopyWithImpl<_$FileDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileDataImplToJson(this);
  }
}

abstract class _FileData extends FileData {
  const factory _FileData({
    @JsonKey() final int? id,
    @JsonKey() final int? monthlyReportId,
    @JsonKey() final int? uploadedBy,
    @JsonKey() final String? title,
    @JsonKey() final String? description,
    @JsonKey() final String? fileName,
    @JsonKey() final String? fileUrl,
    @JsonKey() final String? fileType,
    @JsonKey() final int? fileSize,
    @JsonKey() final int? sortOrder,
    @JsonKey() final String? createdAt,
  }) = _$FileDataImpl;
  const _FileData._() : super._();

  factory _FileData.fromJson(Map<String, dynamic> json) =
      _$FileDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  int? get monthlyReportId;
  @override
  @JsonKey()
  int? get uploadedBy;
  @override
  @JsonKey()
  String? get title;
  @override
  @JsonKey()
  String? get description;
  @override
  @JsonKey()
  String? get fileName;
  @override
  @JsonKey()
  String? get fileUrl;
  @override
  @JsonKey()
  String? get fileType;
  @override
  @JsonKey()
  int? get fileSize;
  @override
  @JsonKey()
  int? get sortOrder;
  @override
  @JsonKey()
  String? get createdAt;

  /// Create a copy of FileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileDataImplCopyWith<_$FileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
