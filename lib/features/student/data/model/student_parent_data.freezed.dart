// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_parent_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StudentParentData _$StudentParentDataFromJson(Map<String, dynamic> json) {
  return _StudentParentData.fromJson(json);
}

/// @nodoc
mixin _$StudentParentData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey()
  int? get parentId => throw _privateConstructorUsedError;
  @JsonKey()
  String? get relationship => throw _privateConstructorUsedError;
  @JsonKey()
  bool? get isPrimaryContact => throw _privateConstructorUsedError;
  @JsonKey()
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey()
  ParentData? get parent => throw _privateConstructorUsedError;

  /// Serializes this StudentParentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentParentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentParentDataCopyWith<StudentParentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentParentDataCopyWith<$Res> {
  factory $StudentParentDataCopyWith(
    StudentParentData value,
    $Res Function(StudentParentData) then,
  ) = _$StudentParentDataCopyWithImpl<$Res, StudentParentData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? studentId,
    @JsonKey() int? parentId,
    @JsonKey() String? relationship,
    @JsonKey() bool? isPrimaryContact,
    @JsonKey() String? createdAt,
    @JsonKey() ParentData? parent,
  });

  $ParentDataCopyWith<$Res>? get parent;
}

/// @nodoc
class _$StudentParentDataCopyWithImpl<$Res, $Val extends StudentParentData>
    implements $StudentParentDataCopyWith<$Res> {
  _$StudentParentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentParentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? parentId = freezed,
    Object? relationship = freezed,
    Object? isPrimaryContact = freezed,
    Object? createdAt = freezed,
    Object? parent = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            studentId: freezed == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            relationship: freezed == relationship
                ? _value.relationship
                : relationship // ignore: cast_nullable_to_non_nullable
                      as String?,
            isPrimaryContact: freezed == isPrimaryContact
                ? _value.isPrimaryContact
                : isPrimaryContact // ignore: cast_nullable_to_non_nullable
                      as bool?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            parent: freezed == parent
                ? _value.parent
                : parent // ignore: cast_nullable_to_non_nullable
                      as ParentData?,
          )
          as $Val,
    );
  }

  /// Create a copy of StudentParentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentDataCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $ParentDataCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentParentDataImplCopyWith<$Res>
    implements $StudentParentDataCopyWith<$Res> {
  factory _$$StudentParentDataImplCopyWith(
    _$StudentParentDataImpl value,
    $Res Function(_$StudentParentDataImpl) then,
  ) = __$$StudentParentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? studentId,
    @JsonKey() int? parentId,
    @JsonKey() String? relationship,
    @JsonKey() bool? isPrimaryContact,
    @JsonKey() String? createdAt,
    @JsonKey() ParentData? parent,
  });

  @override
  $ParentDataCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$StudentParentDataImplCopyWithImpl<$Res>
    extends _$StudentParentDataCopyWithImpl<$Res, _$StudentParentDataImpl>
    implements _$$StudentParentDataImplCopyWith<$Res> {
  __$$StudentParentDataImplCopyWithImpl(
    _$StudentParentDataImpl _value,
    $Res Function(_$StudentParentDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentParentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? parentId = freezed,
    Object? relationship = freezed,
    Object? isPrimaryContact = freezed,
    Object? createdAt = freezed,
    Object? parent = freezed,
  }) {
    return _then(
      _$StudentParentDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        studentId: freezed == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        relationship: freezed == relationship
            ? _value.relationship
            : relationship // ignore: cast_nullable_to_non_nullable
                  as String?,
        isPrimaryContact: freezed == isPrimaryContact
            ? _value.isPrimaryContact
            : isPrimaryContact // ignore: cast_nullable_to_non_nullable
                  as bool?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        parent: freezed == parent
            ? _value.parent
            : parent // ignore: cast_nullable_to_non_nullable
                  as ParentData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentParentDataImpl extends _StudentParentData {
  const _$StudentParentDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.studentId,
    @JsonKey() this.parentId,
    @JsonKey() this.relationship,
    @JsonKey() this.isPrimaryContact,
    @JsonKey() this.createdAt,
    @JsonKey() this.parent,
  }) : super._();

  factory _$StudentParentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentParentDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int? studentId;
  @override
  @JsonKey()
  final int? parentId;
  @override
  @JsonKey()
  final String? relationship;
  @override
  @JsonKey()
  final bool? isPrimaryContact;
  @override
  @JsonKey()
  final String? createdAt;
  @override
  @JsonKey()
  final ParentData? parent;

  @override
  String toString() {
    return 'StudentParentData(id: $id, studentId: $studentId, parentId: $parentId, relationship: $relationship, isPrimaryContact: $isPrimaryContact, createdAt: $createdAt, parent: $parent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentParentDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.isPrimaryContact, isPrimaryContact) ||
                other.isPrimaryContact == isPrimaryContact) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    studentId,
    parentId,
    relationship,
    isPrimaryContact,
    createdAt,
    parent,
  );

  /// Create a copy of StudentParentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentParentDataImplCopyWith<_$StudentParentDataImpl> get copyWith =>
      __$$StudentParentDataImplCopyWithImpl<_$StudentParentDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentParentDataImplToJson(this);
  }
}

abstract class _StudentParentData extends StudentParentData {
  const factory _StudentParentData({
    @JsonKey() final int? id,
    @JsonKey() final int? studentId,
    @JsonKey() final int? parentId,
    @JsonKey() final String? relationship,
    @JsonKey() final bool? isPrimaryContact,
    @JsonKey() final String? createdAt,
    @JsonKey() final ParentData? parent,
  }) = _$StudentParentDataImpl;
  const _StudentParentData._() : super._();

  factory _StudentParentData.fromJson(Map<String, dynamic> json) =
      _$StudentParentDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  int? get studentId;
  @override
  @JsonKey()
  int? get parentId;
  @override
  @JsonKey()
  String? get relationship;
  @override
  @JsonKey()
  bool? get isPrimaryContact;
  @override
  @JsonKey()
  String? get createdAt;
  @override
  @JsonKey()
  ParentData? get parent;

  /// Create a copy of StudentParentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentParentDataImplCopyWith<_$StudentParentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
