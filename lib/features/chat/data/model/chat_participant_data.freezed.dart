// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_participant_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatParticipantData _$ChatParticipantDataFromJson(Map<String, dynamic> json) {
  return _ChatParticipantData.fromJson(json);
}

/// @nodoc
mixin _$ChatParticipantData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;

  /// Serializes this ChatParticipantData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatParticipantData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatParticipantDataCopyWith<ChatParticipantData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatParticipantDataCopyWith<$Res> {
  factory $ChatParticipantDataCopyWith(
    ChatParticipantData value,
    $Res Function(ChatParticipantData) then,
  ) = _$ChatParticipantDataCopyWithImpl<$Res, ChatParticipantData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'role') String? role,
  });
}

/// @nodoc
class _$ChatParticipantDataCopyWithImpl<$Res, $Val extends ChatParticipantData>
    implements $ChatParticipantDataCopyWith<$Res> {
  _$ChatParticipantDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatParticipantData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? role = freezed,
  }) {
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
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            role: freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatParticipantDataImplCopyWith<$Res>
    implements $ChatParticipantDataCopyWith<$Res> {
  factory _$$ChatParticipantDataImplCopyWith(
    _$ChatParticipantDataImpl value,
    $Res Function(_$ChatParticipantDataImpl) then,
  ) = __$$ChatParticipantDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'role') String? role,
  });
}

/// @nodoc
class __$$ChatParticipantDataImplCopyWithImpl<$Res>
    extends _$ChatParticipantDataCopyWithImpl<$Res, _$ChatParticipantDataImpl>
    implements _$$ChatParticipantDataImplCopyWith<$Res> {
  __$$ChatParticipantDataImplCopyWithImpl(
    _$ChatParticipantDataImpl _value,
    $Res Function(_$ChatParticipantDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatParticipantData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? role = freezed,
  }) {
    return _then(
      _$ChatParticipantDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatParticipantDataImpl implements _ChatParticipantData {
  const _$ChatParticipantDataImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'avatarUrl') this.avatarUrl,
    @JsonKey(name: 'role') this.role,
  });

  factory _$ChatParticipantDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatParticipantDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'role')
  final String? role;

  @override
  String toString() {
    return 'ChatParticipantData(id: $id, name: $name, avatarUrl: $avatarUrl, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatParticipantDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl, role);

  /// Create a copy of ChatParticipantData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatParticipantDataImplCopyWith<_$ChatParticipantDataImpl> get copyWith =>
      __$$ChatParticipantDataImplCopyWithImpl<_$ChatParticipantDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatParticipantDataImplToJson(this);
  }
}

abstract class _ChatParticipantData implements ChatParticipantData {
  const factory _ChatParticipantData({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'avatarUrl') final String? avatarUrl,
    @JsonKey(name: 'role') final String? role,
  }) = _$ChatParticipantDataImpl;

  factory _ChatParticipantData.fromJson(Map<String, dynamic> json) =
      _$ChatParticipantDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'role')
  String? get role;

  /// Create a copy of ChatParticipantData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatParticipantDataImplCopyWith<_$ChatParticipantDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
