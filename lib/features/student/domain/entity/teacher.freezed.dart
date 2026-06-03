// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Teacher {
  int get id => throw _privateConstructorUsedError;
  int get classId => throw _privateConstructorUsedError;
  String get specialty => throw _privateConstructorUsedError;
  String get qualification => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherCopyWith<Teacher> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCopyWith<$Res> {
  factory $TeacherCopyWith(Teacher value, $Res Function(Teacher) then) =
      _$TeacherCopyWithImpl<$Res, Teacher>;
  @useResult
  $Res call({
    int id,
    int classId,
    String specialty,
    String qualification,
    DateTime? createdAt,
    DateTime? updatedAt,
    User user,
  });

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$TeacherCopyWithImpl<$Res, $Val extends Teacher>
    implements $TeacherCopyWith<$Res> {
  _$TeacherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? classId = null,
    Object? specialty = null,
    Object? qualification = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            classId: null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as int,
            specialty: null == specialty
                ? _value.specialty
                : specialty // ignore: cast_nullable_to_non_nullable
                      as String,
            qualification: null == qualification
                ? _value.qualification
                : qualification // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            user: null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as User,
          )
          as $Val,
    );
  }

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeacherImplCopyWith<$Res> implements $TeacherCopyWith<$Res> {
  factory _$$TeacherImplCopyWith(
    _$TeacherImpl value,
    $Res Function(_$TeacherImpl) then,
  ) = __$$TeacherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int classId,
    String specialty,
    String qualification,
    DateTime? createdAt,
    DateTime? updatedAt,
    User user,
  });

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$TeacherImplCopyWithImpl<$Res>
    extends _$TeacherCopyWithImpl<$Res, _$TeacherImpl>
    implements _$$TeacherImplCopyWith<$Res> {
  __$$TeacherImplCopyWithImpl(
    _$TeacherImpl _value,
    $Res Function(_$TeacherImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? classId = null,
    Object? specialty = null,
    Object? qualification = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = null,
  }) {
    return _then(
      _$TeacherImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        classId: null == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as int,
        specialty: null == specialty
            ? _value.specialty
            : specialty // ignore: cast_nullable_to_non_nullable
                  as String,
        qualification: null == qualification
            ? _value.qualification
            : qualification // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }
}

/// @nodoc

class _$TeacherImpl implements _Teacher {
  const _$TeacherImpl({
    this.id = 0,
    this.classId = 0,
    this.specialty = '',
    this.qualification = '',
    this.createdAt,
    this.updatedAt,
    this.user = const User(),
  });

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int classId;
  @override
  @JsonKey()
  final String specialty;
  @override
  @JsonKey()
  final String qualification;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final User user;

  @override
  String toString() {
    return 'Teacher(id: $id, classId: $classId, specialty: $specialty, qualification: $qualification, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.specialty, specialty) ||
                other.specialty == specialty) &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    classId,
    specialty,
    qualification,
    createdAt,
    updatedAt,
    user,
  );

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherImplCopyWith<_$TeacherImpl> get copyWith =>
      __$$TeacherImplCopyWithImpl<_$TeacherImpl>(this, _$identity);
}

abstract class _Teacher implements Teacher {
  const factory _Teacher({
    final int id,
    final int classId,
    final String specialty,
    final String qualification,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final User user,
  }) = _$TeacherImpl;

  @override
  int get id;
  @override
  int get classId;
  @override
  String get specialty;
  @override
  String get qualification;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  User get user;

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherImplCopyWith<_$TeacherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
