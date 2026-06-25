// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ContactData _$ContactDataFromJson(Map<String, dynamic> json) {
  return _ContactData.fromJson(json);
}

/// @nodoc
mixin _$ContactData {
  @JsonKey(name: 'id', includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'classId')
  String? get classId => throw _privateConstructorUsedError;

  /// Serializes this ContactData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactDataCopyWith<ContactData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDataCopyWith<$Res> {
  factory $ContactDataCopyWith(
    ContactData value,
    $Res Function(ContactData) then,
  ) = _$ContactDataCopyWithImpl<$Res, ContactData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'classId') String? classId,
  });
}

/// @nodoc
class _$ContactDataCopyWithImpl<$Res, $Val extends ContactData>
    implements $ContactDataCopyWith<$Res> {
  _$ContactDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? role = freezed,
    Object? avatar = freezed,
    Object? classId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            role: freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String?,
            avatar: freezed == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                      as String?,
            classId: freezed == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContactDataImplCopyWith<$Res>
    implements $ContactDataCopyWith<$Res> {
  factory _$$ContactDataImplCopyWith(
    _$ContactDataImpl value,
    $Res Function(_$ContactDataImpl) then,
  ) = __$$ContactDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'classId') String? classId,
  });
}

/// @nodoc
class __$$ContactDataImplCopyWithImpl<$Res>
    extends _$ContactDataCopyWithImpl<$Res, _$ContactDataImpl>
    implements _$$ContactDataImplCopyWith<$Res> {
  __$$ContactDataImplCopyWithImpl(
    _$ContactDataImpl _value,
    $Res Function(_$ContactDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? role = freezed,
    Object? avatar = freezed,
    Object? classId = freezed,
  }) {
    return _then(
      _$ContactDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatar: freezed == avatar
            ? _value.avatar
            : avatar // ignore: cast_nullable_to_non_nullable
                  as String?,
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactDataImpl implements _ContactData {
  const _$ContactDataImpl({
    @JsonKey(name: 'id', includeToJson: false) this.id,
    @JsonKey(name: 'fullName') this.fullName,
    @JsonKey(name: 'role') this.role,
    @JsonKey(name: 'avatar') this.avatar,
    @JsonKey(name: 'classId') this.classId,
  });

  factory _$ContactDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactDataImplFromJson(json);

  @override
  @JsonKey(name: 'id', includeToJson: false)
  final String? id;
  @override
  @JsonKey(name: 'fullName')
  final String? fullName;
  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;
  @override
  @JsonKey(name: 'classId')
  final String? classId;

  @override
  String toString() {
    return 'ContactData(id: $id, fullName: $fullName, role: $role, avatar: $avatar, classId: $classId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fullName, role, avatar, classId);

  /// Create a copy of ContactData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDataImplCopyWith<_$ContactDataImpl> get copyWith =>
      __$$ContactDataImplCopyWithImpl<_$ContactDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDataImplToJson(this);
  }
}

abstract class _ContactData implements ContactData {
  const factory _ContactData({
    @JsonKey(name: 'id', includeToJson: false) final String? id,
    @JsonKey(name: 'fullName') final String? fullName,
    @JsonKey(name: 'role') final String? role,
    @JsonKey(name: 'avatar') final String? avatar,
    @JsonKey(name: 'classId') final String? classId,
  }) = _$ContactDataImpl;

  factory _ContactData.fromJson(Map<String, dynamic> json) =
      _$ContactDataImpl.fromJson;

  @override
  @JsonKey(name: 'id', includeToJson: false)
  String? get id;
  @override
  @JsonKey(name: 'fullName')
  String? get fullName;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;
  @override
  @JsonKey(name: 'classId')
  String? get classId;

  /// Create a copy of ContactData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactDataImplCopyWith<_$ContactDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
