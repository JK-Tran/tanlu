// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProgramData _$ProgramDataFromJson(Map<String, dynamic> json) {
  return _ProgramData.fromJson(json);
}

/// @nodoc
mixin _$ProgramData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  int? get classId => throw _privateConstructorUsedError;
  @JsonKey()
  int? get createdBy => throw _privateConstructorUsedError;
  @JsonKey()
  String? get title => throw _privateConstructorUsedError;
  @JsonKey()
  String? get description => throw _privateConstructorUsedError;
  @JsonKey()
  String? get version => throw _privateConstructorUsedError;
  @JsonKey()
  int? get targetAgeFromMonth => throw _privateConstructorUsedError;
  @JsonKey()
  int? get targetAgeToMonth => throw _privateConstructorUsedError;
  @JsonKey()
  String? get status => throw _privateConstructorUsedError;
  @JsonKey()
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey()
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey()
  ClassroomData? get classroom => throw _privateConstructorUsedError;
  @JsonKey()
  ProgramCreatorData? get creator => throw _privateConstructorUsedError;
  @JsonKey()
  List<ProgramFileData>? get files => throw _privateConstructorUsedError;

  /// Serializes this ProgramData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgramData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramDataCopyWith<ProgramData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramDataCopyWith<$Res> {
  factory $ProgramDataCopyWith(
    ProgramData value,
    $Res Function(ProgramData) then,
  ) = _$ProgramDataCopyWithImpl<$Res, ProgramData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? classId,
    @JsonKey() int? createdBy,
    @JsonKey() String? title,
    @JsonKey() String? description,
    @JsonKey() String? version,
    @JsonKey() int? targetAgeFromMonth,
    @JsonKey() int? targetAgeToMonth,
    @JsonKey() String? status,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() ClassroomData? classroom,
    @JsonKey() ProgramCreatorData? creator,
    @JsonKey() List<ProgramFileData>? files,
  });

  $ClassroomDataCopyWith<$Res>? get classroom;
  $ProgramCreatorDataCopyWith<$Res>? get creator;
}

/// @nodoc
class _$ProgramDataCopyWithImpl<$Res, $Val extends ProgramData>
    implements $ProgramDataCopyWith<$Res> {
  _$ProgramDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgramData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classId = freezed,
    Object? createdBy = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? version = freezed,
    Object? targetAgeFromMonth = freezed,
    Object? targetAgeToMonth = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? classroom = freezed,
    Object? creator = freezed,
    Object? files = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            classId: freezed == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdBy: freezed == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as int?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            version: freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String?,
            targetAgeFromMonth: freezed == targetAgeFromMonth
                ? _value.targetAgeFromMonth
                : targetAgeFromMonth // ignore: cast_nullable_to_non_nullable
                      as int?,
            targetAgeToMonth: freezed == targetAgeToMonth
                ? _value.targetAgeToMonth
                : targetAgeToMonth // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            classroom: freezed == classroom
                ? _value.classroom
                : classroom // ignore: cast_nullable_to_non_nullable
                      as ClassroomData?,
            creator: freezed == creator
                ? _value.creator
                : creator // ignore: cast_nullable_to_non_nullable
                      as ProgramCreatorData?,
            files: freezed == files
                ? _value.files
                : files // ignore: cast_nullable_to_non_nullable
                      as List<ProgramFileData>?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProgramData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassroomDataCopyWith<$Res>? get classroom {
    if (_value.classroom == null) {
      return null;
    }

    return $ClassroomDataCopyWith<$Res>(_value.classroom!, (value) {
      return _then(_value.copyWith(classroom: value) as $Val);
    });
  }

  /// Create a copy of ProgramData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProgramCreatorDataCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $ProgramCreatorDataCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgramDataImplCopyWith<$Res>
    implements $ProgramDataCopyWith<$Res> {
  factory _$$ProgramDataImplCopyWith(
    _$ProgramDataImpl value,
    $Res Function(_$ProgramDataImpl) then,
  ) = __$$ProgramDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? classId,
    @JsonKey() int? createdBy,
    @JsonKey() String? title,
    @JsonKey() String? description,
    @JsonKey() String? version,
    @JsonKey() int? targetAgeFromMonth,
    @JsonKey() int? targetAgeToMonth,
    @JsonKey() String? status,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() ClassroomData? classroom,
    @JsonKey() ProgramCreatorData? creator,
    @JsonKey() List<ProgramFileData>? files,
  });

  @override
  $ClassroomDataCopyWith<$Res>? get classroom;
  @override
  $ProgramCreatorDataCopyWith<$Res>? get creator;
}

/// @nodoc
class __$$ProgramDataImplCopyWithImpl<$Res>
    extends _$ProgramDataCopyWithImpl<$Res, _$ProgramDataImpl>
    implements _$$ProgramDataImplCopyWith<$Res> {
  __$$ProgramDataImplCopyWithImpl(
    _$ProgramDataImpl _value,
    $Res Function(_$ProgramDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgramData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classId = freezed,
    Object? createdBy = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? version = freezed,
    Object? targetAgeFromMonth = freezed,
    Object? targetAgeToMonth = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? classroom = freezed,
    Object? creator = freezed,
    Object? files = freezed,
  }) {
    return _then(
      _$ProgramDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdBy: freezed == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as int?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        version: freezed == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String?,
        targetAgeFromMonth: freezed == targetAgeFromMonth
            ? _value.targetAgeFromMonth
            : targetAgeFromMonth // ignore: cast_nullable_to_non_nullable
                  as int?,
        targetAgeToMonth: freezed == targetAgeToMonth
            ? _value.targetAgeToMonth
            : targetAgeToMonth // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        classroom: freezed == classroom
            ? _value.classroom
            : classroom // ignore: cast_nullable_to_non_nullable
                  as ClassroomData?,
        creator: freezed == creator
            ? _value.creator
            : creator // ignore: cast_nullable_to_non_nullable
                  as ProgramCreatorData?,
        files: freezed == files
            ? _value._files
            : files // ignore: cast_nullable_to_non_nullable
                  as List<ProgramFileData>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramDataImpl extends _ProgramData {
  const _$ProgramDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.classId,
    @JsonKey() this.createdBy,
    @JsonKey() this.title,
    @JsonKey() this.description,
    @JsonKey() this.version,
    @JsonKey() this.targetAgeFromMonth,
    @JsonKey() this.targetAgeToMonth,
    @JsonKey() this.status,
    @JsonKey() this.createdAt,
    @JsonKey() this.updatedAt,
    @JsonKey() this.classroom,
    @JsonKey() this.creator,
    @JsonKey() final List<ProgramFileData>? files,
  }) : _files = files,
       super._();

  factory _$ProgramDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int? classId;
  @override
  @JsonKey()
  final int? createdBy;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final String? version;
  @override
  @JsonKey()
  final int? targetAgeFromMonth;
  @override
  @JsonKey()
  final int? targetAgeToMonth;
  @override
  @JsonKey()
  final String? status;
  @override
  @JsonKey()
  final String? createdAt;
  @override
  @JsonKey()
  final String? updatedAt;
  @override
  @JsonKey()
  final ClassroomData? classroom;
  @override
  @JsonKey()
  final ProgramCreatorData? creator;
  final List<ProgramFileData>? _files;
  @override
  @JsonKey()
  List<ProgramFileData>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProgramData(id: $id, classId: $classId, createdBy: $createdBy, title: $title, description: $description, version: $version, targetAgeFromMonth: $targetAgeFromMonth, targetAgeToMonth: $targetAgeToMonth, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, classroom: $classroom, creator: $creator, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.targetAgeFromMonth, targetAgeFromMonth) ||
                other.targetAgeFromMonth == targetAgeFromMonth) &&
            (identical(other.targetAgeToMonth, targetAgeToMonth) ||
                other.targetAgeToMonth == targetAgeToMonth) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    classId,
    createdBy,
    title,
    description,
    version,
    targetAgeFromMonth,
    targetAgeToMonth,
    status,
    createdAt,
    updatedAt,
    classroom,
    creator,
    const DeepCollectionEquality().hash(_files),
  );

  /// Create a copy of ProgramData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramDataImplCopyWith<_$ProgramDataImpl> get copyWith =>
      __$$ProgramDataImplCopyWithImpl<_$ProgramDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramDataImplToJson(this);
  }
}

abstract class _ProgramData extends ProgramData {
  const factory _ProgramData({
    @JsonKey() final int? id,
    @JsonKey() final int? classId,
    @JsonKey() final int? createdBy,
    @JsonKey() final String? title,
    @JsonKey() final String? description,
    @JsonKey() final String? version,
    @JsonKey() final int? targetAgeFromMonth,
    @JsonKey() final int? targetAgeToMonth,
    @JsonKey() final String? status,
    @JsonKey() final String? createdAt,
    @JsonKey() final String? updatedAt,
    @JsonKey() final ClassroomData? classroom,
    @JsonKey() final ProgramCreatorData? creator,
    @JsonKey() final List<ProgramFileData>? files,
  }) = _$ProgramDataImpl;
  const _ProgramData._() : super._();

  factory _ProgramData.fromJson(Map<String, dynamic> json) =
      _$ProgramDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  int? get classId;
  @override
  @JsonKey()
  int? get createdBy;
  @override
  @JsonKey()
  String? get title;
  @override
  @JsonKey()
  String? get description;
  @override
  @JsonKey()
  String? get version;
  @override
  @JsonKey()
  int? get targetAgeFromMonth;
  @override
  @JsonKey()
  int? get targetAgeToMonth;
  @override
  @JsonKey()
  String? get status;
  @override
  @JsonKey()
  String? get createdAt;
  @override
  @JsonKey()
  String? get updatedAt;
  @override
  @JsonKey()
  ClassroomData? get classroom;
  @override
  @JsonKey()
  ProgramCreatorData? get creator;
  @override
  @JsonKey()
  List<ProgramFileData>? get files;

  /// Create a copy of ProgramData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramDataImplCopyWith<_$ProgramDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgramCreatorData _$ProgramCreatorDataFromJson(Map<String, dynamic> json) {
  return _ProgramCreatorData.fromJson(json);
}

/// @nodoc
mixin _$ProgramCreatorData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey()
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this ProgramCreatorData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgramCreatorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramCreatorDataCopyWith<ProgramCreatorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramCreatorDataCopyWith<$Res> {
  factory $ProgramCreatorDataCopyWith(
    ProgramCreatorData value,
    $Res Function(ProgramCreatorData) then,
  ) = _$ProgramCreatorDataCopyWithImpl<$Res, ProgramCreatorData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() String? fullName,
    @JsonKey() String? email,
  });
}

/// @nodoc
class _$ProgramCreatorDataCopyWithImpl<$Res, $Val extends ProgramCreatorData>
    implements $ProgramCreatorDataCopyWith<$Res> {
  _$ProgramCreatorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgramCreatorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProgramCreatorDataImplCopyWith<$Res>
    implements $ProgramCreatorDataCopyWith<$Res> {
  factory _$$ProgramCreatorDataImplCopyWith(
    _$ProgramCreatorDataImpl value,
    $Res Function(_$ProgramCreatorDataImpl) then,
  ) = __$$ProgramCreatorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() String? fullName,
    @JsonKey() String? email,
  });
}

/// @nodoc
class __$$ProgramCreatorDataImplCopyWithImpl<$Res>
    extends _$ProgramCreatorDataCopyWithImpl<$Res, _$ProgramCreatorDataImpl>
    implements _$$ProgramCreatorDataImplCopyWith<$Res> {
  __$$ProgramCreatorDataImplCopyWithImpl(
    _$ProgramCreatorDataImpl _value,
    $Res Function(_$ProgramCreatorDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgramCreatorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
  }) {
    return _then(
      _$ProgramCreatorDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramCreatorDataImpl implements _ProgramCreatorData {
  const _$ProgramCreatorDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.fullName,
    @JsonKey() this.email,
  });

  factory _$ProgramCreatorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramCreatorDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? fullName;
  @override
  @JsonKey()
  final String? email;

  @override
  String toString() {
    return 'ProgramCreatorData(id: $id, fullName: $fullName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramCreatorDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, email);

  /// Create a copy of ProgramCreatorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramCreatorDataImplCopyWith<_$ProgramCreatorDataImpl> get copyWith =>
      __$$ProgramCreatorDataImplCopyWithImpl<_$ProgramCreatorDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramCreatorDataImplToJson(this);
  }
}

abstract class _ProgramCreatorData implements ProgramCreatorData {
  const factory _ProgramCreatorData({
    @JsonKey() final int? id,
    @JsonKey() final String? fullName,
    @JsonKey() final String? email,
  }) = _$ProgramCreatorDataImpl;

  factory _ProgramCreatorData.fromJson(Map<String, dynamic> json) =
      _$ProgramCreatorDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  String? get fullName;
  @override
  @JsonKey()
  String? get email;

  /// Create a copy of ProgramCreatorData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramCreatorDataImplCopyWith<_$ProgramCreatorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgramsResponseData _$ProgramsResponseDataFromJson(Map<String, dynamic> json) {
  return _ProgramsResponseData.fromJson(json);
}

/// @nodoc
mixin _$ProgramsResponseData {
  @JsonKey(name: 'programs')
  List<ProgramData> get programs => throw _privateConstructorUsedError;

  /// Serializes this ProgramsResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgramsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramsResponseDataCopyWith<ProgramsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramsResponseDataCopyWith<$Res> {
  factory $ProgramsResponseDataCopyWith(
    ProgramsResponseData value,
    $Res Function(ProgramsResponseData) then,
  ) = _$ProgramsResponseDataCopyWithImpl<$Res, ProgramsResponseData>;
  @useResult
  $Res call({@JsonKey(name: 'programs') List<ProgramData> programs});
}

/// @nodoc
class _$ProgramsResponseDataCopyWithImpl<
  $Res,
  $Val extends ProgramsResponseData
>
    implements $ProgramsResponseDataCopyWith<$Res> {
  _$ProgramsResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgramsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? programs = null}) {
    return _then(
      _value.copyWith(
            programs: null == programs
                ? _value.programs
                : programs // ignore: cast_nullable_to_non_nullable
                      as List<ProgramData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProgramsResponseDataImplCopyWith<$Res>
    implements $ProgramsResponseDataCopyWith<$Res> {
  factory _$$ProgramsResponseDataImplCopyWith(
    _$ProgramsResponseDataImpl value,
    $Res Function(_$ProgramsResponseDataImpl) then,
  ) = __$$ProgramsResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'programs') List<ProgramData> programs});
}

/// @nodoc
class __$$ProgramsResponseDataImplCopyWithImpl<$Res>
    extends _$ProgramsResponseDataCopyWithImpl<$Res, _$ProgramsResponseDataImpl>
    implements _$$ProgramsResponseDataImplCopyWith<$Res> {
  __$$ProgramsResponseDataImplCopyWithImpl(
    _$ProgramsResponseDataImpl _value,
    $Res Function(_$ProgramsResponseDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgramsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? programs = null}) {
    return _then(
      _$ProgramsResponseDataImpl(
        programs: null == programs
            ? _value._programs
            : programs // ignore: cast_nullable_to_non_nullable
                  as List<ProgramData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramsResponseDataImpl implements _ProgramsResponseData {
  const _$ProgramsResponseDataImpl({
    @JsonKey(name: 'programs') required final List<ProgramData> programs,
  }) : _programs = programs;

  factory _$ProgramsResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramsResponseDataImplFromJson(json);

  final List<ProgramData> _programs;
  @override
  @JsonKey(name: 'programs')
  List<ProgramData> get programs {
    if (_programs is EqualUnmodifiableListView) return _programs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programs);
  }

  @override
  String toString() {
    return 'ProgramsResponseData(programs: $programs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramsResponseDataImpl &&
            const DeepCollectionEquality().equals(other._programs, _programs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_programs));

  /// Create a copy of ProgramsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramsResponseDataImplCopyWith<_$ProgramsResponseDataImpl>
  get copyWith =>
      __$$ProgramsResponseDataImplCopyWithImpl<_$ProgramsResponseDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramsResponseDataImplToJson(this);
  }
}

abstract class _ProgramsResponseData implements ProgramsResponseData {
  const factory _ProgramsResponseData({
    @JsonKey(name: 'programs') required final List<ProgramData> programs,
  }) = _$ProgramsResponseDataImpl;

  factory _ProgramsResponseData.fromJson(Map<String, dynamic> json) =
      _$ProgramsResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'programs')
  List<ProgramData> get programs;

  /// Create a copy of ProgramsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramsResponseDataImplCopyWith<_$ProgramsResponseDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProgramResponseData _$ProgramResponseDataFromJson(Map<String, dynamic> json) {
  return _ProgramResponseData.fromJson(json);
}

/// @nodoc
mixin _$ProgramResponseData {
  @JsonKey(name: 'program')
  ProgramData get program => throw _privateConstructorUsedError;

  /// Serializes this ProgramResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgramResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramResponseDataCopyWith<ProgramResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramResponseDataCopyWith<$Res> {
  factory $ProgramResponseDataCopyWith(
    ProgramResponseData value,
    $Res Function(ProgramResponseData) then,
  ) = _$ProgramResponseDataCopyWithImpl<$Res, ProgramResponseData>;
  @useResult
  $Res call({@JsonKey(name: 'program') ProgramData program});

  $ProgramDataCopyWith<$Res> get program;
}

/// @nodoc
class _$ProgramResponseDataCopyWithImpl<$Res, $Val extends ProgramResponseData>
    implements $ProgramResponseDataCopyWith<$Res> {
  _$ProgramResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgramResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? program = null}) {
    return _then(
      _value.copyWith(
            program: null == program
                ? _value.program
                : program // ignore: cast_nullable_to_non_nullable
                      as ProgramData,
          )
          as $Val,
    );
  }

  /// Create a copy of ProgramResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProgramDataCopyWith<$Res> get program {
    return $ProgramDataCopyWith<$Res>(_value.program, (value) {
      return _then(_value.copyWith(program: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgramResponseDataImplCopyWith<$Res>
    implements $ProgramResponseDataCopyWith<$Res> {
  factory _$$ProgramResponseDataImplCopyWith(
    _$ProgramResponseDataImpl value,
    $Res Function(_$ProgramResponseDataImpl) then,
  ) = __$$ProgramResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'program') ProgramData program});

  @override
  $ProgramDataCopyWith<$Res> get program;
}

/// @nodoc
class __$$ProgramResponseDataImplCopyWithImpl<$Res>
    extends _$ProgramResponseDataCopyWithImpl<$Res, _$ProgramResponseDataImpl>
    implements _$$ProgramResponseDataImplCopyWith<$Res> {
  __$$ProgramResponseDataImplCopyWithImpl(
    _$ProgramResponseDataImpl _value,
    $Res Function(_$ProgramResponseDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgramResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? program = null}) {
    return _then(
      _$ProgramResponseDataImpl(
        program: null == program
            ? _value.program
            : program // ignore: cast_nullable_to_non_nullable
                  as ProgramData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramResponseDataImpl implements _ProgramResponseData {
  const _$ProgramResponseDataImpl({
    @JsonKey(name: 'program') required this.program,
  });

  factory _$ProgramResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'program')
  final ProgramData program;

  @override
  String toString() {
    return 'ProgramResponseData(program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramResponseDataImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, program);

  /// Create a copy of ProgramResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramResponseDataImplCopyWith<_$ProgramResponseDataImpl> get copyWith =>
      __$$ProgramResponseDataImplCopyWithImpl<_$ProgramResponseDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramResponseDataImplToJson(this);
  }
}

abstract class _ProgramResponseData implements ProgramResponseData {
  const factory _ProgramResponseData({
    @JsonKey(name: 'program') required final ProgramData program,
  }) = _$ProgramResponseDataImpl;

  factory _ProgramResponseData.fromJson(Map<String, dynamic> json) =
      _$ProgramResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'program')
  ProgramData get program;

  /// Create a copy of ProgramResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramResponseDataImplCopyWith<_$ProgramResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
