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
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'centerId')
  int? get centerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'passwordHash')
  String? get passwordHash => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcmToken')
  String? get fcmToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'classId')
  int? get classId => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'centerId') int? centerId,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'passwordHash') String? passwordHash,
    @JsonKey(name: 'fcmToken') String? fcmToken,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'classId') int? classId,
  });
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
    Object? role = freezed,
    Object? centerId = freezed,
    Object? phone = freezed,
    Object? avatarUrl = freezed,
    Object? passwordHash = freezed,
    Object? fcmToken = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? classId = freezed,
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
            role: freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String?,
            centerId: freezed == centerId
                ? _value.centerId
                : centerId // ignore: cast_nullable_to_non_nullable
                      as int?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            passwordHash: freezed == passwordHash
                ? _value.passwordHash
                : passwordHash // ignore: cast_nullable_to_non_nullable
                      as String?,
            fcmToken: freezed == fcmToken
                ? _value.fcmToken
                : fcmToken // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            classId: freezed == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
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
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'centerId') int? centerId,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'passwordHash') String? passwordHash,
    @JsonKey(name: 'fcmToken') String? fcmToken,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'classId') int? classId,
  });
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
    Object? role = freezed,
    Object? centerId = freezed,
    Object? phone = freezed,
    Object? avatarUrl = freezed,
    Object? passwordHash = freezed,
    Object? fcmToken = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? classId = freezed,
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
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String?,
        centerId: freezed == centerId
            ? _value.centerId
            : centerId // ignore: cast_nullable_to_non_nullable
                  as int?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        passwordHash: freezed == passwordHash
            ? _value.passwordHash
            : passwordHash // ignore: cast_nullable_to_non_nullable
                  as String?,
        fcmToken: freezed == fcmToken
            ? _value.fcmToken
            : fcmToken // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as int?,
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
    @JsonKey(name: 'role') this.role,
    @JsonKey(name: 'centerId') this.centerId,
    @JsonKey(name: 'phone') this.phone,
    @JsonKey(name: 'avatarUrl') this.avatarUrl,
    @JsonKey(name: 'passwordHash') this.passwordHash,
    @JsonKey(name: 'fcmToken') this.fcmToken,
    @JsonKey(name: 'createdAt') this.createdAt,
    @JsonKey(name: 'updatedAt') this.updatedAt,
    @JsonKey(name: 'classId') this.classId,
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
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'centerId')
  final int? centerId;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'passwordHash')
  final String? passwordHash;
  @override
  @JsonKey(name: 'fcmToken')
  final String? fcmToken;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'classId')
  final int? classId;

  @override
  String toString() {
    return 'UserData(id: $id, email: $email, fullName: $fullName, role: $role, centerId: $centerId, phone: $phone, avatarUrl: $avatarUrl, passwordHash: $passwordHash, fcmToken: $fcmToken, createdAt: $createdAt, updatedAt: $updatedAt, classId: $classId)';
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
            (identical(other.role, role) || other.role == role) &&
            (identical(other.centerId, centerId) ||
                other.centerId == centerId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.passwordHash, passwordHash) ||
                other.passwordHash == passwordHash) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    email,
    fullName,
    role,
    centerId,
    phone,
    avatarUrl,
    passwordHash,
    fcmToken,
    createdAt,
    updatedAt,
    classId,
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
    @JsonKey(name: 'role') final String? role,
    @JsonKey(name: 'centerId') final int? centerId,
    @JsonKey(name: 'phone') final String? phone,
    @JsonKey(name: 'avatarUrl') final String? avatarUrl,
    @JsonKey(name: 'passwordHash') final String? passwordHash,
    @JsonKey(name: 'fcmToken') final String? fcmToken,
    @JsonKey(name: 'createdAt') final DateTime? createdAt,
    @JsonKey(name: 'updatedAt') final DateTime? updatedAt,
    @JsonKey(name: 'classId') final int? classId,
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
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'centerId')
  int? get centerId;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'passwordHash')
  String? get passwordHash;
  @override
  @JsonKey(name: 'fcmToken')
  String? get fcmToken;
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'classId')
  int? get classId;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDataResponse _$UserDataResponseFromJson(Map<String, dynamic> json) {
  return _UserDataResponse.fromJson(json);
}

/// @nodoc
mixin _$UserDataResponse {
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserData? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'firebaseCustomToken')
  String? get firebaseCustomToken => throw _privateConstructorUsedError;

  /// Serializes this UserDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataResponseCopyWith<UserDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataResponseCopyWith<$Res> {
  factory $UserDataResponseCopyWith(
    UserDataResponse value,
    $Res Function(UserDataResponse) then,
  ) = _$UserDataResponseCopyWithImpl<$Res, UserDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'user') UserData? user,
    @JsonKey(name: 'firebaseCustomToken') String? firebaseCustomToken,
  });

  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserDataResponseCopyWithImpl<$Res, $Val extends UserDataResponse>
    implements $UserDataResponseCopyWith<$Res> {
  _$UserDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
    Object? firebaseCustomToken = freezed,
  }) {
    return _then(
      _value.copyWith(
            token: freezed == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String?,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as UserData?,
            firebaseCustomToken: freezed == firebaseCustomToken
                ? _value.firebaseCustomToken
                : firebaseCustomToken // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of UserDataResponse
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
abstract class _$$UserDataResponseImplCopyWith<$Res>
    implements $UserDataResponseCopyWith<$Res> {
  factory _$$UserDataResponseImplCopyWith(
    _$UserDataResponseImpl value,
    $Res Function(_$UserDataResponseImpl) then,
  ) = __$$UserDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'user') UserData? user,
    @JsonKey(name: 'firebaseCustomToken') String? firebaseCustomToken,
  });

  @override
  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserDataResponseImplCopyWithImpl<$Res>
    extends _$UserDataResponseCopyWithImpl<$Res, _$UserDataResponseImpl>
    implements _$$UserDataResponseImplCopyWith<$Res> {
  __$$UserDataResponseImplCopyWithImpl(
    _$UserDataResponseImpl _value,
    $Res Function(_$UserDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
    Object? firebaseCustomToken = freezed,
  }) {
    return _then(
      _$UserDataResponseImpl(
        token: freezed == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String?,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserData?,
        firebaseCustomToken: freezed == firebaseCustomToken
            ? _value.firebaseCustomToken
            : firebaseCustomToken // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataResponseImpl implements _UserDataResponse {
  const _$UserDataResponseImpl({
    @JsonKey(name: 'token') this.token,
    @JsonKey(name: 'user') this.user,
    @JsonKey(name: 'firebaseCustomToken') this.firebaseCustomToken,
  });

  factory _$UserDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String? token;
  @override
  @JsonKey(name: 'user')
  final UserData? user;
  @override
  @JsonKey(name: 'firebaseCustomToken')
  final String? firebaseCustomToken;

  @override
  String toString() {
    return 'UserDataResponse(token: $token, user: $user, firebaseCustomToken: $firebaseCustomToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.firebaseCustomToken, firebaseCustomToken) ||
                other.firebaseCustomToken == firebaseCustomToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, token, user, firebaseCustomToken);

  /// Create a copy of UserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataResponseImplCopyWith<_$UserDataResponseImpl> get copyWith =>
      __$$UserDataResponseImplCopyWithImpl<_$UserDataResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataResponseImplToJson(this);
  }
}

abstract class _UserDataResponse implements UserDataResponse {
  const factory _UserDataResponse({
    @JsonKey(name: 'token') final String? token,
    @JsonKey(name: 'user') final UserData? user,
    @JsonKey(name: 'firebaseCustomToken') final String? firebaseCustomToken,
  }) = _$UserDataResponseImpl;

  factory _UserDataResponse.fromJson(Map<String, dynamic> json) =
      _$UserDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String? get token;
  @override
  @JsonKey(name: 'user')
  UserData? get user;
  @override
  @JsonKey(name: 'firebaseCustomToken')
  String? get firebaseCustomToken;

  /// Create a copy of UserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataResponseImplCopyWith<_$UserDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
