// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_contact_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatContactData _$ChatContactDataFromJson(Map<String, dynamic> json) {
  return _ChatContactData.fromJson(json);
}

/// @nodoc
mixin _$ChatContactData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'childrenText')
  String? get childrenText => throw _privateConstructorUsedError;

  /// Serializes this ChatContactData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatContactData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatContactDataCopyWith<ChatContactData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatContactDataCopyWith<$Res> {
  factory $ChatContactDataCopyWith(
    ChatContactData value,
    $Res Function(ChatContactData) then,
  ) = _$ChatContactDataCopyWithImpl<$Res, ChatContactData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'childrenText') String? childrenText,
  });
}

/// @nodoc
class _$ChatContactDataCopyWithImpl<$Res, $Val extends ChatContactData>
    implements $ChatContactDataCopyWith<$Res> {
  _$ChatContactDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatContactData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? role = freezed,
    Object? phone = freezed,
    Object? childrenText = freezed,
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
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            role: freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            childrenText: freezed == childrenText
                ? _value.childrenText
                : childrenText // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatContactDataImplCopyWith<$Res>
    implements $ChatContactDataCopyWith<$Res> {
  factory _$$ChatContactDataImplCopyWith(
    _$ChatContactDataImpl value,
    $Res Function(_$ChatContactDataImpl) then,
  ) = __$$ChatContactDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'childrenText') String? childrenText,
  });
}

/// @nodoc
class __$$ChatContactDataImplCopyWithImpl<$Res>
    extends _$ChatContactDataCopyWithImpl<$Res, _$ChatContactDataImpl>
    implements _$$ChatContactDataImplCopyWith<$Res> {
  __$$ChatContactDataImplCopyWithImpl(
    _$ChatContactDataImpl _value,
    $Res Function(_$ChatContactDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatContactData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? role = freezed,
    Object? phone = freezed,
    Object? childrenText = freezed,
  }) {
    return _then(
      _$ChatContactDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        childrenText: freezed == childrenText
            ? _value.childrenText
            : childrenText // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatContactDataImpl implements _ChatContactData {
  const _$ChatContactDataImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'fullName') this.fullName,
    @JsonKey(name: 'avatarUrl') this.avatarUrl,
    @JsonKey(name: 'role') this.role,
    @JsonKey(name: 'phone') this.phone,
    @JsonKey(name: 'childrenText') this.childrenText,
  });

  factory _$ChatContactDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatContactDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'fullName')
  final String? fullName;
  @override
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'childrenText')
  final String? childrenText;

  @override
  String toString() {
    return 'ChatContactData(id: $id, fullName: $fullName, avatarUrl: $avatarUrl, role: $role, phone: $phone, childrenText: $childrenText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatContactDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.childrenText, childrenText) ||
                other.childrenText == childrenText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    fullName,
    avatarUrl,
    role,
    phone,
    childrenText,
  );

  /// Create a copy of ChatContactData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatContactDataImplCopyWith<_$ChatContactDataImpl> get copyWith =>
      __$$ChatContactDataImplCopyWithImpl<_$ChatContactDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatContactDataImplToJson(this);
  }
}

abstract class _ChatContactData implements ChatContactData {
  const factory _ChatContactData({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'fullName') final String? fullName,
    @JsonKey(name: 'avatarUrl') final String? avatarUrl,
    @JsonKey(name: 'role') final String? role,
    @JsonKey(name: 'phone') final String? phone,
    @JsonKey(name: 'childrenText') final String? childrenText,
  }) = _$ChatContactDataImpl;

  factory _ChatContactData.fromJson(Map<String, dynamic> json) =
      _$ChatContactDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'fullName')
  String? get fullName;
  @override
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'childrenText')
  String? get childrenText;

  /// Create a copy of ChatContactData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatContactDataImplCopyWith<_$ChatContactDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
