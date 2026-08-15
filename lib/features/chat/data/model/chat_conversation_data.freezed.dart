// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_conversation_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatConversationData _$ChatConversationDataFromJson(Map<String, dynamic> json) {
  return _ChatConversationData.fromJson(json);
}

/// @nodoc
mixin _$ChatConversationData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'isGroup')
  bool? get isGroup => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'participants')
  List<int>? get participants => throw _privateConstructorUsedError;
  @JsonKey(name: 'participantDetails')
  Map<String, ChatParticipantData>? get participantDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'lastMessage')
  String? get lastMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastMessageType')
  String? get lastMessageType => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLastMessageRevoked')
  bool? get isLastMessageRevoked => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastMessageTimestamp')
  DateTime? get lastMessageTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastMessageSenderId')
  int? get lastMessageSenderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'unreadCount')
  int? get unreadCount => throw _privateConstructorUsedError;

  /// Serializes this ChatConversationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatConversationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatConversationDataCopyWith<ChatConversationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatConversationDataCopyWith<$Res> {
  factory $ChatConversationDataCopyWith(
    ChatConversationData value,
    $Res Function(ChatConversationData) then,
  ) = _$ChatConversationDataCopyWithImpl<$Res, ChatConversationData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'isGroup') bool? isGroup,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'participants') List<int>? participants,
    @JsonKey(name: 'participantDetails')
    Map<String, ChatParticipantData>? participantDetails,
    @JsonKey(name: 'lastMessage') String? lastMessage,
    @JsonKey(name: 'lastMessageType') String? lastMessageType,
    @JsonKey(name: 'isLastMessageRevoked') bool? isLastMessageRevoked,
    @JsonKey(name: 'lastMessageTimestamp') DateTime? lastMessageTimestamp,
    @JsonKey(name: 'lastMessageSenderId') int? lastMessageSenderId,
    @JsonKey(name: 'unreadCount') int? unreadCount,
  });
}

/// @nodoc
class _$ChatConversationDataCopyWithImpl<
  $Res,
  $Val extends ChatConversationData
>
    implements $ChatConversationDataCopyWith<$Res> {
  _$ChatConversationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatConversationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isGroup = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? participants = freezed,
    Object? participantDetails = freezed,
    Object? lastMessage = freezed,
    Object? lastMessageType = freezed,
    Object? isLastMessageRevoked = freezed,
    Object? lastMessageTimestamp = freezed,
    Object? lastMessageSenderId = freezed,
    Object? unreadCount = freezed,
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
            isGroup: freezed == isGroup
                ? _value.isGroup
                : isGroup // ignore: cast_nullable_to_non_nullable
                      as bool?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            participants: freezed == participants
                ? _value.participants
                : participants // ignore: cast_nullable_to_non_nullable
                      as List<int>?,
            participantDetails: freezed == participantDetails
                ? _value.participantDetails
                : participantDetails // ignore: cast_nullable_to_non_nullable
                      as Map<String, ChatParticipantData>?,
            lastMessage: freezed == lastMessage
                ? _value.lastMessage
                : lastMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastMessageType: freezed == lastMessageType
                ? _value.lastMessageType
                : lastMessageType // ignore: cast_nullable_to_non_nullable
                      as String?,
            isLastMessageRevoked: freezed == isLastMessageRevoked
                ? _value.isLastMessageRevoked
                : isLastMessageRevoked // ignore: cast_nullable_to_non_nullable
                      as bool?,
            lastMessageTimestamp: freezed == lastMessageTimestamp
                ? _value.lastMessageTimestamp
                : lastMessageTimestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            lastMessageSenderId: freezed == lastMessageSenderId
                ? _value.lastMessageSenderId
                : lastMessageSenderId // ignore: cast_nullable_to_non_nullable
                      as int?,
            unreadCount: freezed == unreadCount
                ? _value.unreadCount
                : unreadCount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatConversationDataImplCopyWith<$Res>
    implements $ChatConversationDataCopyWith<$Res> {
  factory _$$ChatConversationDataImplCopyWith(
    _$ChatConversationDataImpl value,
    $Res Function(_$ChatConversationDataImpl) then,
  ) = __$$ChatConversationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'isGroup') bool? isGroup,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'participants') List<int>? participants,
    @JsonKey(name: 'participantDetails')
    Map<String, ChatParticipantData>? participantDetails,
    @JsonKey(name: 'lastMessage') String? lastMessage,
    @JsonKey(name: 'lastMessageType') String? lastMessageType,
    @JsonKey(name: 'isLastMessageRevoked') bool? isLastMessageRevoked,
    @JsonKey(name: 'lastMessageTimestamp') DateTime? lastMessageTimestamp,
    @JsonKey(name: 'lastMessageSenderId') int? lastMessageSenderId,
    @JsonKey(name: 'unreadCount') int? unreadCount,
  });
}

/// @nodoc
class __$$ChatConversationDataImplCopyWithImpl<$Res>
    extends _$ChatConversationDataCopyWithImpl<$Res, _$ChatConversationDataImpl>
    implements _$$ChatConversationDataImplCopyWith<$Res> {
  __$$ChatConversationDataImplCopyWithImpl(
    _$ChatConversationDataImpl _value,
    $Res Function(_$ChatConversationDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatConversationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isGroup = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? participants = freezed,
    Object? participantDetails = freezed,
    Object? lastMessage = freezed,
    Object? lastMessageType = freezed,
    Object? isLastMessageRevoked = freezed,
    Object? lastMessageTimestamp = freezed,
    Object? lastMessageSenderId = freezed,
    Object? unreadCount = freezed,
  }) {
    return _then(
      _$ChatConversationDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        isGroup: freezed == isGroup
            ? _value.isGroup
            : isGroup // ignore: cast_nullable_to_non_nullable
                  as bool?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        participants: freezed == participants
            ? _value._participants
            : participants // ignore: cast_nullable_to_non_nullable
                  as List<int>?,
        participantDetails: freezed == participantDetails
            ? _value._participantDetails
            : participantDetails // ignore: cast_nullable_to_non_nullable
                  as Map<String, ChatParticipantData>?,
        lastMessage: freezed == lastMessage
            ? _value.lastMessage
            : lastMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastMessageType: freezed == lastMessageType
            ? _value.lastMessageType
            : lastMessageType // ignore: cast_nullable_to_non_nullable
                  as String?,
        isLastMessageRevoked: freezed == isLastMessageRevoked
            ? _value.isLastMessageRevoked
            : isLastMessageRevoked // ignore: cast_nullable_to_non_nullable
                  as bool?,
        lastMessageTimestamp: freezed == lastMessageTimestamp
            ? _value.lastMessageTimestamp
            : lastMessageTimestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        lastMessageSenderId: freezed == lastMessageSenderId
            ? _value.lastMessageSenderId
            : lastMessageSenderId // ignore: cast_nullable_to_non_nullable
                  as int?,
        unreadCount: freezed == unreadCount
            ? _value.unreadCount
            : unreadCount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatConversationDataImpl implements _ChatConversationData {
  const _$ChatConversationDataImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'isGroup') this.isGroup,
    @JsonKey(name: 'createdAt') this.createdAt,
    @JsonKey(name: 'updatedAt') this.updatedAt,
    @JsonKey(name: 'participants') final List<int>? participants,
    @JsonKey(name: 'participantDetails')
    final Map<String, ChatParticipantData>? participantDetails,
    @JsonKey(name: 'lastMessage') this.lastMessage,
    @JsonKey(name: 'lastMessageType') this.lastMessageType,
    @JsonKey(name: 'isLastMessageRevoked') this.isLastMessageRevoked,
    @JsonKey(name: 'lastMessageTimestamp') this.lastMessageTimestamp,
    @JsonKey(name: 'lastMessageSenderId') this.lastMessageSenderId,
    @JsonKey(name: 'unreadCount') this.unreadCount,
  }) : _participants = participants,
       _participantDetails = participantDetails;

  factory _$ChatConversationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatConversationDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'isGroup')
  final bool? isGroup;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  final List<int>? _participants;
  @override
  @JsonKey(name: 'participants')
  List<int>? get participants {
    final value = _participants;
    if (value == null) return null;
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, ChatParticipantData>? _participantDetails;
  @override
  @JsonKey(name: 'participantDetails')
  Map<String, ChatParticipantData>? get participantDetails {
    final value = _participantDetails;
    if (value == null) return null;
    if (_participantDetails is EqualUnmodifiableMapView)
      return _participantDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'lastMessage')
  final String? lastMessage;
  @override
  @JsonKey(name: 'lastMessageType')
  final String? lastMessageType;
  @override
  @JsonKey(name: 'isLastMessageRevoked')
  final bool? isLastMessageRevoked;
  @override
  @JsonKey(name: 'lastMessageTimestamp')
  final DateTime? lastMessageTimestamp;
  @override
  @JsonKey(name: 'lastMessageSenderId')
  final int? lastMessageSenderId;
  @override
  @JsonKey(name: 'unreadCount')
  final int? unreadCount;

  @override
  String toString() {
    return 'ChatConversationData(id: $id, name: $name, isGroup: $isGroup, createdAt: $createdAt, updatedAt: $updatedAt, participants: $participants, participantDetails: $participantDetails, lastMessage: $lastMessage, lastMessageType: $lastMessageType, isLastMessageRevoked: $isLastMessageRevoked, lastMessageTimestamp: $lastMessageTimestamp, lastMessageSenderId: $lastMessageSenderId, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatConversationDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isGroup, isGroup) || other.isGroup == isGroup) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(
              other._participants,
              _participants,
            ) &&
            const DeepCollectionEquality().equals(
              other._participantDetails,
              _participantDetails,
            ) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessageType, lastMessageType) ||
                other.lastMessageType == lastMessageType) &&
            (identical(other.isLastMessageRevoked, isLastMessageRevoked) ||
                other.isLastMessageRevoked == isLastMessageRevoked) &&
            (identical(other.lastMessageTimestamp, lastMessageTimestamp) ||
                other.lastMessageTimestamp == lastMessageTimestamp) &&
            (identical(other.lastMessageSenderId, lastMessageSenderId) ||
                other.lastMessageSenderId == lastMessageSenderId) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    isGroup,
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_participants),
    const DeepCollectionEquality().hash(_participantDetails),
    lastMessage,
    lastMessageType,
    isLastMessageRevoked,
    lastMessageTimestamp,
    lastMessageSenderId,
    unreadCount,
  );

  /// Create a copy of ChatConversationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatConversationDataImplCopyWith<_$ChatConversationDataImpl>
  get copyWith =>
      __$$ChatConversationDataImplCopyWithImpl<_$ChatConversationDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatConversationDataImplToJson(this);
  }
}

abstract class _ChatConversationData implements ChatConversationData {
  const factory _ChatConversationData({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'isGroup') final bool? isGroup,
    @JsonKey(name: 'createdAt') final DateTime? createdAt,
    @JsonKey(name: 'updatedAt') final DateTime? updatedAt,
    @JsonKey(name: 'participants') final List<int>? participants,
    @JsonKey(name: 'participantDetails')
    final Map<String, ChatParticipantData>? participantDetails,
    @JsonKey(name: 'lastMessage') final String? lastMessage,
    @JsonKey(name: 'lastMessageType') final String? lastMessageType,
    @JsonKey(name: 'isLastMessageRevoked') final bool? isLastMessageRevoked,
    @JsonKey(name: 'lastMessageTimestamp') final DateTime? lastMessageTimestamp,
    @JsonKey(name: 'lastMessageSenderId') final int? lastMessageSenderId,
    @JsonKey(name: 'unreadCount') final int? unreadCount,
  }) = _$ChatConversationDataImpl;

  factory _ChatConversationData.fromJson(Map<String, dynamic> json) =
      _$ChatConversationDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'isGroup')
  bool? get isGroup;
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'participants')
  List<int>? get participants;
  @override
  @JsonKey(name: 'participantDetails')
  Map<String, ChatParticipantData>? get participantDetails;
  @override
  @JsonKey(name: 'lastMessage')
  String? get lastMessage;
  @override
  @JsonKey(name: 'lastMessageType')
  String? get lastMessageType;
  @override
  @JsonKey(name: 'isLastMessageRevoked')
  bool? get isLastMessageRevoked;
  @override
  @JsonKey(name: 'lastMessageTimestamp')
  DateTime? get lastMessageTimestamp;
  @override
  @JsonKey(name: 'lastMessageSenderId')
  int? get lastMessageSenderId;
  @override
  @JsonKey(name: 'unreadCount')
  int? get unreadCount;

  /// Create a copy of ChatConversationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatConversationDataImplCopyWith<_$ChatConversationDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
