// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ConversationData _$ConversationDataFromJson(Map<String, dynamic> json) {
  return _ConversationData.fromJson(json);
}

/// @nodoc
mixin _$ConversationData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  String? get name => throw _privateConstructorUsedError;
  @JsonKey()
  String? get type => throw _privateConstructorUsedError;
  @JsonKey()
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey()
  List<ParticipantData>? get participants => throw _privateConstructorUsedError;
  @JsonKey()
  List<MessageData>? get messages => throw _privateConstructorUsedError;

  /// Serializes this ConversationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationDataCopyWith<ConversationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationDataCopyWith<$Res> {
  factory $ConversationDataCopyWith(
    ConversationData value,
    $Res Function(ConversationData) then,
  ) = _$ConversationDataCopyWithImpl<$Res, ConversationData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() String? name,
    @JsonKey() String? type,
    @JsonKey() String? updatedAt,
    @JsonKey() List<ParticipantData>? participants,
    @JsonKey() List<MessageData>? messages,
  });
}

/// @nodoc
class _$ConversationDataCopyWithImpl<$Res, $Val extends ConversationData>
    implements $ConversationDataCopyWith<$Res> {
  _$ConversationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? updatedAt = freezed,
    Object? participants = freezed,
    Object? messages = freezed,
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
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            participants: freezed == participants
                ? _value.participants
                : participants // ignore: cast_nullable_to_non_nullable
                      as List<ParticipantData>?,
            messages: freezed == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<MessageData>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConversationDataImplCopyWith<$Res>
    implements $ConversationDataCopyWith<$Res> {
  factory _$$ConversationDataImplCopyWith(
    _$ConversationDataImpl value,
    $Res Function(_$ConversationDataImpl) then,
  ) = __$$ConversationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() String? name,
    @JsonKey() String? type,
    @JsonKey() String? updatedAt,
    @JsonKey() List<ParticipantData>? participants,
    @JsonKey() List<MessageData>? messages,
  });
}

/// @nodoc
class __$$ConversationDataImplCopyWithImpl<$Res>
    extends _$ConversationDataCopyWithImpl<$Res, _$ConversationDataImpl>
    implements _$$ConversationDataImplCopyWith<$Res> {
  __$$ConversationDataImplCopyWithImpl(
    _$ConversationDataImpl _value,
    $Res Function(_$ConversationDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConversationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? updatedAt = freezed,
    Object? participants = freezed,
    Object? messages = freezed,
  }) {
    return _then(
      _$ConversationDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        participants: freezed == participants
            ? _value._participants
            : participants // ignore: cast_nullable_to_non_nullable
                  as List<ParticipantData>?,
        messages: freezed == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<MessageData>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationDataImpl extends _ConversationData {
  const _$ConversationDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.name,
    @JsonKey() this.type,
    @JsonKey() this.updatedAt,
    @JsonKey() final List<ParticipantData>? participants,
    @JsonKey() final List<MessageData>? messages,
  }) : _participants = participants,
       _messages = messages,
       super._();

  factory _$ConversationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? type;
  @override
  @JsonKey()
  final String? updatedAt;
  final List<ParticipantData>? _participants;
  @override
  @JsonKey()
  List<ParticipantData>? get participants {
    final value = _participants;
    if (value == null) return null;
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MessageData>? _messages;
  @override
  @JsonKey()
  List<MessageData>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ConversationData(id: $id, name: $name, type: $type, updatedAt: $updatedAt, participants: $participants, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(
              other._participants,
              _participants,
            ) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    type,
    updatedAt,
    const DeepCollectionEquality().hash(_participants),
    const DeepCollectionEquality().hash(_messages),
  );

  /// Create a copy of ConversationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationDataImplCopyWith<_$ConversationDataImpl> get copyWith =>
      __$$ConversationDataImplCopyWithImpl<_$ConversationDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationDataImplToJson(this);
  }
}

abstract class _ConversationData extends ConversationData {
  const factory _ConversationData({
    @JsonKey() final int? id,
    @JsonKey() final String? name,
    @JsonKey() final String? type,
    @JsonKey() final String? updatedAt,
    @JsonKey() final List<ParticipantData>? participants,
    @JsonKey() final List<MessageData>? messages,
  }) = _$ConversationDataImpl;
  const _ConversationData._() : super._();

  factory _ConversationData.fromJson(Map<String, dynamic> json) =
      _$ConversationDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  String? get name;
  @override
  @JsonKey()
  String? get type;
  @override
  @JsonKey()
  String? get updatedAt;
  @override
  @JsonKey()
  List<ParticipantData>? get participants;
  @override
  @JsonKey()
  List<MessageData>? get messages;

  /// Create a copy of ConversationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationDataImplCopyWith<_$ConversationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
