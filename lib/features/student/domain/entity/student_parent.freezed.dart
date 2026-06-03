// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_parent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StudentParent {
  int get id => throw _privateConstructorUsedError;
  int get studentId => throw _privateConstructorUsedError;
  int get parentId => throw _privateConstructorUsedError;
  String get relationship => throw _privateConstructorUsedError;
  bool get isPrimaryContact => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  Parent get parent => throw _privateConstructorUsedError;

  /// Create a copy of StudentParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentParentCopyWith<StudentParent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentParentCopyWith<$Res> {
  factory $StudentParentCopyWith(
    StudentParent value,
    $Res Function(StudentParent) then,
  ) = _$StudentParentCopyWithImpl<$Res, StudentParent>;
  @useResult
  $Res call({
    int id,
    int studentId,
    int parentId,
    String relationship,
    bool isPrimaryContact,
    DateTime? createdAt,
    Parent parent,
  });

  $ParentCopyWith<$Res> get parent;
}

/// @nodoc
class _$StudentParentCopyWithImpl<$Res, $Val extends StudentParent>
    implements $StudentParentCopyWith<$Res> {
  _$StudentParentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentParent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? parentId = null,
    Object? relationship = null,
    Object? isPrimaryContact = null,
    Object? createdAt = freezed,
    Object? parent = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int,
            parentId: null == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as int,
            relationship: null == relationship
                ? _value.relationship
                : relationship // ignore: cast_nullable_to_non_nullable
                      as String,
            isPrimaryContact: null == isPrimaryContact
                ? _value.isPrimaryContact
                : isPrimaryContact // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            parent: null == parent
                ? _value.parent
                : parent // ignore: cast_nullable_to_non_nullable
                      as Parent,
          )
          as $Val,
    );
  }

  /// Create a copy of StudentParent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_value.parent, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentParentImplCopyWith<$Res>
    implements $StudentParentCopyWith<$Res> {
  factory _$$StudentParentImplCopyWith(
    _$StudentParentImpl value,
    $Res Function(_$StudentParentImpl) then,
  ) = __$$StudentParentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int studentId,
    int parentId,
    String relationship,
    bool isPrimaryContact,
    DateTime? createdAt,
    Parent parent,
  });

  @override
  $ParentCopyWith<$Res> get parent;
}

/// @nodoc
class __$$StudentParentImplCopyWithImpl<$Res>
    extends _$StudentParentCopyWithImpl<$Res, _$StudentParentImpl>
    implements _$$StudentParentImplCopyWith<$Res> {
  __$$StudentParentImplCopyWithImpl(
    _$StudentParentImpl _value,
    $Res Function(_$StudentParentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentParent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? parentId = null,
    Object? relationship = null,
    Object? isPrimaryContact = null,
    Object? createdAt = freezed,
    Object? parent = null,
  }) {
    return _then(
      _$StudentParentImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int,
        parentId: null == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as int,
        relationship: null == relationship
            ? _value.relationship
            : relationship // ignore: cast_nullable_to_non_nullable
                  as String,
        isPrimaryContact: null == isPrimaryContact
            ? _value.isPrimaryContact
            : isPrimaryContact // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        parent: null == parent
            ? _value.parent
            : parent // ignore: cast_nullable_to_non_nullable
                  as Parent,
      ),
    );
  }
}

/// @nodoc

class _$StudentParentImpl implements _StudentParent {
  const _$StudentParentImpl({
    this.id = 0,
    this.studentId = 0,
    this.parentId = 0,
    this.relationship = '',
    this.isPrimaryContact = false,
    this.createdAt,
    this.parent = const Parent(),
  });

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int studentId;
  @override
  @JsonKey()
  final int parentId;
  @override
  @JsonKey()
  final String relationship;
  @override
  @JsonKey()
  final bool isPrimaryContact;
  @override
  final DateTime? createdAt;
  @override
  @JsonKey()
  final Parent parent;

  @override
  String toString() {
    return 'StudentParent(id: $id, studentId: $studentId, parentId: $parentId, relationship: $relationship, isPrimaryContact: $isPrimaryContact, createdAt: $createdAt, parent: $parent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentParentImpl &&
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

  /// Create a copy of StudentParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentParentImplCopyWith<_$StudentParentImpl> get copyWith =>
      __$$StudentParentImplCopyWithImpl<_$StudentParentImpl>(this, _$identity);
}

abstract class _StudentParent implements StudentParent {
  const factory _StudentParent({
    final int id,
    final int studentId,
    final int parentId,
    final String relationship,
    final bool isPrimaryContact,
    final DateTime? createdAt,
    final Parent parent,
  }) = _$StudentParentImpl;

  @override
  int get id;
  @override
  int get studentId;
  @override
  int get parentId;
  @override
  String get relationship;
  @override
  bool get isPrimaryContact;
  @override
  DateTime? get createdAt;
  @override
  Parent get parent;

  /// Create a copy of StudentParent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentParentImplCopyWith<_$StudentParentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
