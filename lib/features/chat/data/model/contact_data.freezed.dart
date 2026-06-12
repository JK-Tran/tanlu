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
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey()
  String? get avatarFileId => throw _privateConstructorUsedError;
  @JsonKey()
  RoleData? get role => throw _privateConstructorUsedError;

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
    @JsonKey() int? id,
    @JsonKey() String? fullName,
    @JsonKey() String? avatarFileId,
    @JsonKey() RoleData? role,
  });

  $RoleDataCopyWith<$Res>? get role;
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
    Object? avatarFileId = freezed,
    Object? role = freezed,
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
            avatarFileId: freezed == avatarFileId
                ? _value.avatarFileId
                : avatarFileId // ignore: cast_nullable_to_non_nullable
                      as String?,
            role: freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as RoleData?,
          )
          as $Val,
    );
  }

  /// Create a copy of ContactData
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
abstract class _$$ContactDataImplCopyWith<$Res>
    implements $ContactDataCopyWith<$Res> {
  factory _$$ContactDataImplCopyWith(
    _$ContactDataImpl value,
    $Res Function(_$ContactDataImpl) then,
  ) = __$$ContactDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() String? fullName,
    @JsonKey() String? avatarFileId,
    @JsonKey() RoleData? role,
  });

  @override
  $RoleDataCopyWith<$Res>? get role;
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
    Object? avatarFileId = freezed,
    Object? role = freezed,
  }) {
    return _then(
      _$ContactDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatarFileId: freezed == avatarFileId
            ? _value.avatarFileId
            : avatarFileId // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$ContactDataImpl extends _ContactData {
  const _$ContactDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.fullName,
    @JsonKey() this.avatarFileId,
    @JsonKey() this.role,
  }) : super._();

  factory _$ContactDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? fullName;
  @override
  @JsonKey()
  final String? avatarFileId;
  @override
  @JsonKey()
  final RoleData? role;

  @override
  String toString() {
    return 'ContactData(id: $id, fullName: $fullName, avatarFileId: $avatarFileId, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarFileId, avatarFileId) ||
                other.avatarFileId == avatarFileId) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fullName, avatarFileId, role);

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

abstract class _ContactData extends ContactData {
  const factory _ContactData({
    @JsonKey() final int? id,
    @JsonKey() final String? fullName,
    @JsonKey() final String? avatarFileId,
    @JsonKey() final RoleData? role,
  }) = _$ContactDataImpl;
  const _ContactData._() : super._();

  factory _ContactData.fromJson(Map<String, dynamic> json) =
      _$ContactDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  String? get fullName;
  @override
  @JsonKey()
  String? get avatarFileId;
  @override
  @JsonKey()
  RoleData? get role;

  /// Create a copy of ContactData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactDataImplCopyWith<_$ContactDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoleData _$RoleDataFromJson(Map<String, dynamic> json) {
  return _RoleData.fromJson(json);
}

/// @nodoc
mixin _$RoleData {
  @JsonKey()
  String? get code => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey() String? code});
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
  $Res call({Object? code = freezed}) {
    return _then(
      _value.copyWith(
            code: freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
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
  $Res call({@JsonKey() String? code});
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
  $Res call({Object? code = freezed}) {
    return _then(
      _$RoleDataImpl(
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleDataImpl extends _RoleData {
  const _$RoleDataImpl({@JsonKey() this.code}) : super._();

  factory _$RoleDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleDataImplFromJson(json);

  @override
  @JsonKey()
  final String? code;

  @override
  String toString() {
    return 'RoleData(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleDataImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

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

abstract class _RoleData extends RoleData {
  const factory _RoleData({@JsonKey() final String? code}) = _$RoleDataImpl;
  const _RoleData._() : super._();

  factory _RoleData.fromJson(Map<String, dynamic> json) =
      _$RoleDataImpl.fromJson;

  @override
  @JsonKey()
  String? get code;

  /// Create a copy of RoleData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleDataImplCopyWith<_$RoleDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
