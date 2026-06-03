// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatarFileId')
  String? get avatarFileId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'center', readValue: _readCenter)
  CenterData? get center => throw _privateConstructorUsedError;
  @JsonKey(name: 'role', readValue: _readRole)
  RoleData? get role => throw _privateConstructorUsedError;

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'avatarFileId') String? avatarFileId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'center', readValue: _readCenter) CenterData? center,
    @JsonKey(name: 'role', readValue: _readRole) RoleData? role,
  });

  $CenterDataCopyWith<$Res>? get center;
  $RoleDataCopyWith<$Res>? get role;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? avatarFileId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? center = freezed,
    Object? role = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            avatarFileId: freezed == avatarFileId
                ? _value.avatarFileId
                : avatarFileId // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            center: freezed == center
                ? _value.center
                : center // ignore: cast_nullable_to_non_nullable
                      as CenterData?,
            role: freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as RoleData?,
          )
          as $Val,
    );
  }

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CenterDataCopyWith<$Res>? get center {
    if (_value.center == null) {
      return null;
    }

    return $CenterDataCopyWith<$Res>(_value.center!, (value) {
      return _then(_value.copyWith(center: value) as $Val);
    });
  }

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoleDataCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $RoleDataCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
    _$UserDataImpl value,
    $Res Function(_$UserDataImpl) then,
  ) = __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'avatarFileId') String? avatarFileId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'center', readValue: _readCenter) CenterData? center,
    @JsonKey(name: 'role', readValue: _readRole) RoleData? role,
  });

  @override
  $CenterDataCopyWith<$Res>? get center;
  @override
  $RoleDataCopyWith<$Res>? get role;
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
    _$UserDataImpl _value,
    $Res Function(_$UserDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? avatarFileId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? center = freezed,
    Object? role = freezed,
  }) {
    return _then(
      _$UserDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatarFileId: freezed == avatarFileId
            ? _value.avatarFileId
            : avatarFileId // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        center: freezed == center
            ? _value.center
            : center // ignore: cast_nullable_to_non_nullable
                  as CenterData?,
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as RoleData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl extends _UserData {
  const _$UserDataImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'email') this.email,
    @JsonKey(name: 'fullName') this.fullName,
    @JsonKey(name: 'phone') this.phone,
    @JsonKey(name: 'avatarFileId') this.avatarFileId,
    @JsonKey(name: 'status') this.status,
    @JsonKey(name: 'createdAt') this.createdAt,
    @JsonKey(name: 'center', readValue: _readCenter) this.center,
    @JsonKey(name: 'role', readValue: _readRole) this.role,
  }) : super._();

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'fullName')
  final String? fullName;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'avatarFileId')
  final String? avatarFileId;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'center', readValue: _readCenter)
  final CenterData? center;
  @override
  @JsonKey(name: 'role', readValue: _readRole)
  final RoleData? role;

  @override
  String toString() {
    return 'UserData(id: $id, email: $email, fullName: $fullName, phone: $phone, avatarFileId: $avatarFileId, status: $status, createdAt: $createdAt, center: $center, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatarFileId, avatarFileId) ||
                other.avatarFileId == avatarFileId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.center, center) || other.center == center) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    email,
    fullName,
    phone,
    avatarFileId,
    status,
    createdAt,
    center,
    role,
  );

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(this);
  }
}

abstract class _UserData extends UserData {
  const factory _UserData({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'email') final String? email,
    @JsonKey(name: 'fullName') final String? fullName,
    @JsonKey(name: 'phone') final String? phone,
    @JsonKey(name: 'avatarFileId') final String? avatarFileId,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: 'createdAt') final String? createdAt,
    @JsonKey(name: 'center', readValue: _readCenter) final CenterData? center,
    @JsonKey(name: 'role', readValue: _readRole) final RoleData? role,
  }) = _$UserDataImpl;
  const _UserData._() : super._();

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'fullName')
  String? get fullName;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'avatarFileId')
  String? get avatarFileId;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'center', readValue: _readCenter)
  CenterData? get center;
  @override
  @JsonKey(name: 'role', readValue: _readRole)
  RoleData? get role;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CenterData _$CenterDataFromJson(Map<String, dynamic> json) {
  return _CenterData.fromJson(json);
}

/// @nodoc
mixin _$CenterData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this CenterData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CenterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CenterDataCopyWith<CenterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CenterDataCopyWith<$Res> {
  factory $CenterDataCopyWith(
    CenterData value,
    $Res Function(CenterData) then,
  ) = _$CenterDataCopyWithImpl<$Res, CenterData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  });
}

/// @nodoc
class _$CenterDataCopyWithImpl<$Res, $Val extends CenterData>
    implements $CenterDataCopyWith<$Res> {
  _$CenterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CenterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? name = freezed}) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CenterDataImplCopyWith<$Res>
    implements $CenterDataCopyWith<$Res> {
  factory _$$CenterDataImplCopyWith(
    _$CenterDataImpl value,
    $Res Function(_$CenterDataImpl) then,
  ) = __$$CenterDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  });
}

/// @nodoc
class __$$CenterDataImplCopyWithImpl<$Res>
    extends _$CenterDataCopyWithImpl<$Res, _$CenterDataImpl>
    implements _$$CenterDataImplCopyWith<$Res> {
  __$$CenterDataImplCopyWithImpl(
    _$CenterDataImpl _value,
    $Res Function(_$CenterDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CenterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? name = freezed}) {
    return _then(
      _$CenterDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CenterDataImpl implements _CenterData {
  const _$CenterDataImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'name') this.name,
  });

  factory _$CenterDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CenterDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'CenterData(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CenterDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of CenterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CenterDataImplCopyWith<_$CenterDataImpl> get copyWith =>
      __$$CenterDataImplCopyWithImpl<_$CenterDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CenterDataImplToJson(this);
  }
}

abstract class _CenterData implements CenterData {
  const factory _CenterData({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'name') final String? name,
  }) = _$CenterDataImpl;

  factory _CenterData.fromJson(Map<String, dynamic> json) =
      _$CenterDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of CenterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CenterDataImplCopyWith<_$CenterDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoleData _$RoleDataFromJson(Map<String, dynamic> json) {
  return _RoleData.fromJson(json);
}

/// @nodoc
mixin _$RoleData {
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this RoleData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoleData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleDataCopyWith<RoleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleDataCopyWith<$Res> {
  factory $RoleDataCopyWith(RoleData value, $Res Function(RoleData) then) =
      _$RoleDataCopyWithImpl<$Res, RoleData>;
  @useResult
  $Res call({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'name') String? name,
  });
}

/// @nodoc
class _$RoleDataCopyWithImpl<$Res, $Val extends RoleData>
    implements $RoleDataCopyWith<$Res> {
  _$RoleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoleData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = freezed, Object? name = freezed}) {
    return _then(
      _value.copyWith(
            code: freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RoleDataImplCopyWith<$Res>
    implements $RoleDataCopyWith<$Res> {
  factory _$$RoleDataImplCopyWith(
    _$RoleDataImpl value,
    $Res Function(_$RoleDataImpl) then,
  ) = __$$RoleDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'name') String? name,
  });
}

/// @nodoc
class __$$RoleDataImplCopyWithImpl<$Res>
    extends _$RoleDataCopyWithImpl<$Res, _$RoleDataImpl>
    implements _$$RoleDataImplCopyWith<$Res> {
  __$$RoleDataImplCopyWithImpl(
    _$RoleDataImpl _value,
    $Res Function(_$RoleDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RoleData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = freezed, Object? name = freezed}) {
    return _then(
      _$RoleDataImpl(
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleDataImpl implements _RoleData {
  const _$RoleDataImpl({
    @JsonKey(name: 'code') this.code,
    @JsonKey(name: 'name') this.name,
  });

  factory _$RoleDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleDataImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'RoleData(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleDataImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of RoleData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleDataImplCopyWith<_$RoleDataImpl> get copyWith =>
      __$$RoleDataImplCopyWithImpl<_$RoleDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleDataImplToJson(this);
  }
}

abstract class _RoleData implements RoleData {
  const factory _RoleData({
    @JsonKey(name: 'code') final String? code,
    @JsonKey(name: 'name') final String? name,
  }) = _$RoleDataImpl;

  factory _RoleData.fromJson(Map<String, dynamic> json) =
      _$RoleDataImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of RoleData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleDataImplCopyWith<_$RoleDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
