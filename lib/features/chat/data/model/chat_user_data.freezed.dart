// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatUserData _$ChatUserDataFromJson(Map<String, dynamic> json) {
  return _ChatUserData.fromJson(json);
}

/// @nodoc
mixin _$ChatUserData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey()
  String? get avatarFileId => throw _privateConstructorUsedError;

  /// Serializes this ChatUserData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatUserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatUserDataCopyWith<ChatUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUserDataCopyWith<$Res> {
  factory $ChatUserDataCopyWith(
    ChatUserData value,
    $Res Function(ChatUserData) then,
  ) = _$ChatUserDataCopyWithImpl<$Res, ChatUserData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() String? fullName,
    @JsonKey() String? avatarFileId,
  });
}

/// @nodoc
class _$ChatUserDataCopyWithImpl<$Res, $Val extends ChatUserData>
    implements $ChatUserDataCopyWith<$Res> {
  _$ChatUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatUserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? avatarFileId = freezed,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatUserDataImplCopyWith<$Res>
    implements $ChatUserDataCopyWith<$Res> {
  factory _$$ChatUserDataImplCopyWith(
    _$ChatUserDataImpl value,
    $Res Function(_$ChatUserDataImpl) then,
  ) = __$$ChatUserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() String? fullName,
    @JsonKey() String? avatarFileId,
  });
}

/// @nodoc
class __$$ChatUserDataImplCopyWithImpl<$Res>
    extends _$ChatUserDataCopyWithImpl<$Res, _$ChatUserDataImpl>
    implements _$$ChatUserDataImplCopyWith<$Res> {
  __$$ChatUserDataImplCopyWithImpl(
    _$ChatUserDataImpl _value,
    $Res Function(_$ChatUserDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatUserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? avatarFileId = freezed,
  }) {
    return _then(
      _$ChatUserDataImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatUserDataImpl extends _ChatUserData {
  const _$ChatUserDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.fullName,
    @JsonKey() this.avatarFileId,
  }) : super._();

  factory _$ChatUserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatUserDataImplFromJson(json);

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
  String toString() {
    return 'ChatUserData(id: $id, fullName: $fullName, avatarFileId: $avatarFileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUserDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarFileId, avatarFileId) ||
                other.avatarFileId == avatarFileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, avatarFileId);

  /// Create a copy of ChatUserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatUserDataImplCopyWith<_$ChatUserDataImpl> get copyWith =>
      __$$ChatUserDataImplCopyWithImpl<_$ChatUserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatUserDataImplToJson(this);
  }
}

abstract class _ChatUserData extends ChatUserData {
  const factory _ChatUserData({
    @JsonKey() final int? id,
    @JsonKey() final String? fullName,
    @JsonKey() final String? avatarFileId,
  }) = _$ChatUserDataImpl;
  const _ChatUserData._() : super._();

  factory _ChatUserData.fromJson(Map<String, dynamic> json) =
      _$ChatUserDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  String? get fullName;
  @override
  @JsonKey()
  String? get avatarFileId;

  /// Create a copy of ChatUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatUserDataImplCopyWith<_$ChatUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
