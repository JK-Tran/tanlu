// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TeacherData _$TeacherDataFromJson(Map<String, dynamic> json) {
  return _TeacherData.fromJson(json);
}

/// @nodoc
mixin _$TeacherData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  int? get classId => throw _privateConstructorUsedError;
  @JsonKey()
  String? get specialty => throw _privateConstructorUsedError;
  @JsonKey()
  String? get qualification => throw _privateConstructorUsedError;
  @JsonKey()
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey()
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey()
  UserData? get user => throw _privateConstructorUsedError;

  /// Serializes this TeacherData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherDataCopyWith<TeacherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherDataCopyWith<$Res> {
  factory $TeacherDataCopyWith(
    TeacherData value,
    $Res Function(TeacherData) then,
  ) = _$TeacherDataCopyWithImpl<$Res, TeacherData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? classId,
    @JsonKey() String? specialty,
    @JsonKey() String? qualification,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() UserData? user,
  });

  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$TeacherDataCopyWithImpl<$Res, $Val extends TeacherData>
    implements $TeacherDataCopyWith<$Res> {
  _$TeacherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classId = freezed,
    Object? specialty = freezed,
    Object? qualification = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
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
            specialty: freezed == specialty
                ? _value.specialty
                : specialty // ignore: cast_nullable_to_non_nullable
                      as String?,
            qualification: freezed == qualification
                ? _value.qualification
                : qualification // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as UserData?,
          )
          as $Val,
    );
  }

  /// Create a copy of TeacherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeacherDataImplCopyWith<$Res>
    implements $TeacherDataCopyWith<$Res> {
  factory _$$TeacherDataImplCopyWith(
    _$TeacherDataImpl value,
    $Res Function(_$TeacherDataImpl) then,
  ) = __$$TeacherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? classId,
    @JsonKey() String? specialty,
    @JsonKey() String? qualification,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() UserData? user,
  });

  @override
  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$TeacherDataImplCopyWithImpl<$Res>
    extends _$TeacherDataCopyWithImpl<$Res, _$TeacherDataImpl>
    implements _$$TeacherDataImplCopyWith<$Res> {
  __$$TeacherDataImplCopyWithImpl(
    _$TeacherDataImpl _value,
    $Res Function(_$TeacherDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TeacherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classId = freezed,
    Object? specialty = freezed,
    Object? qualification = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(
      _$TeacherDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as int?,
        specialty: freezed == specialty
            ? _value.specialty
            : specialty // ignore: cast_nullable_to_non_nullable
                  as String?,
        qualification: freezed == qualification
            ? _value.qualification
            : qualification // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherDataImpl extends _TeacherData {
  const _$TeacherDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.classId,
    @JsonKey() this.specialty,
    @JsonKey() this.qualification,
    @JsonKey() this.createdAt,
    @JsonKey() this.updatedAt,
    @JsonKey() this.user,
  }) : super._();

  factory _$TeacherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int? classId;
  @override
  @JsonKey()
  final String? specialty;
  @override
  @JsonKey()
  final String? qualification;
  @override
  @JsonKey()
  final String? createdAt;
  @override
  @JsonKey()
  final String? updatedAt;
  @override
  @JsonKey()
  final UserData? user;

  @override
  String toString() {
    return 'TeacherData(id: $id, classId: $classId, specialty: $specialty, qualification: $qualification, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherDataImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of TeacherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherDataImplCopyWith<_$TeacherDataImpl> get copyWith =>
      __$$TeacherDataImplCopyWithImpl<_$TeacherDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherDataImplToJson(this);
  }
}

abstract class _TeacherData extends TeacherData {
  const factory _TeacherData({
    @JsonKey() final int? id,
    @JsonKey() final int? classId,
    @JsonKey() final String? specialty,
    @JsonKey() final String? qualification,
    @JsonKey() final String? createdAt,
    @JsonKey() final String? updatedAt,
    @JsonKey() final UserData? user,
  }) = _$TeacherDataImpl;
  const _TeacherData._() : super._();

  factory _TeacherData.fromJson(Map<String, dynamic> json) =
      _$TeacherDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  int? get classId;
  @override
  @JsonKey()
  String? get specialty;
  @override
  @JsonKey()
  String? get qualification;
  @override
  @JsonKey()
  String? get createdAt;
  @override
  @JsonKey()
  String? get updatedAt;
  @override
  @JsonKey()
  UserData? get user;

  /// Create a copy of TeacherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherDataImplCopyWith<_$TeacherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
