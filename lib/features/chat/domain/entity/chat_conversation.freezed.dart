// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_conversation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatConversation {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isGroup => throw _privateConstructorUsedError;
  List<int> get participants => throw _privateConstructorUsedError;
  Map<String, ChatParticipant> get participantDetails =>
      throw _privateConstructorUsedError;
  String get lastMessage => throw _privateConstructorUsedError;
  String get lastMessageType => throw _privateConstructorUsedError;
  bool get isLastMessageRevoked => throw _privateConstructorUsedError;
  int get lastMessageSenderId => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  DateTime? get lastMessageTimestamp => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of ChatConversation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatConversationCopyWith<ChatConversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatConversationCopyWith<$Res> {
  factory $ChatConversationCopyWith(
    ChatConversation value,
    $Res Function(ChatConversation) then,
  ) = _$ChatConversationCopyWithImpl<$Res, ChatConversation>;
  @useResult
  $Res call({
    int id,
    String name,
    bool isGroup,
    List<int> participants,
    Map<String, ChatParticipant> participantDetails,
    String lastMessage,
    String lastMessageType,
    bool isLastMessageRevoked,
    int lastMessageSenderId,
    int unreadCount,
    DateTime? lastMessageTimestamp,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$ChatConversationCopyWithImpl<$Res, $Val extends ChatConversation>
    implements $ChatConversationCopyWith<$Res> {
  _$ChatConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatConversation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isGroup = null,
    Object? participants = null,
    Object? participantDetails = null,
    Object? lastMessage = null,
    Object? lastMessageType = null,
    Object? isLastMessageRevoked = null,
    Object? lastMessageSenderId = null,
    Object? unreadCount = null,
    Object? lastMessageTimestamp = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            isGroup: null == isGroup
                ? _value.isGroup
                : isGroup // ignore: cast_nullable_to_non_nullable
                      as bool,
            participants: null == participants
                ? _value.participants
                : participants // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            participantDetails: null == participantDetails
                ? _value.participantDetails
                : participantDetails // ignore: cast_nullable_to_non_nullable
                      as Map<String, ChatParticipant>,
            lastMessage: null == lastMessage
                ? _value.lastMessage
                : lastMessage // ignore: cast_nullable_to_non_nullable
                      as String,
            lastMessageType: null == lastMessageType
                ? _value.lastMessageType
                : lastMessageType // ignore: cast_nullable_to_non_nullable
                      as String,
            isLastMessageRevoked: null == isLastMessageRevoked
                ? _value.isLastMessageRevoked
                : isLastMessageRevoked // ignore: cast_nullable_to_non_nullable
                      as bool,
            lastMessageSenderId: null == lastMessageSenderId
                ? _value.lastMessageSenderId
                : lastMessageSenderId // ignore: cast_nullable_to_non_nullable
                      as int,
            unreadCount: null == unreadCount
                ? _value.unreadCount
                : unreadCount // ignore: cast_nullable_to_non_nullable
                      as int,
            lastMessageTimestamp: freezed == lastMessageTimestamp
                ? _value.lastMessageTimestamp
                : lastMessageTimestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatConversationImplCopyWith<$Res>
    implements $ChatConversationCopyWith<$Res> {
  factory _$$ChatConversationImplCopyWith(
    _$ChatConversationImpl value,
    $Res Function(_$ChatConversationImpl) then,
  ) = __$$ChatConversationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    bool isGroup,
    List<int> participants,
    Map<String, ChatParticipant> participantDetails,
    String lastMessage,
    String lastMessageType,
    bool isLastMessageRevoked,
    int lastMessageSenderId,
    int unreadCount,
    DateTime? lastMessageTimestamp,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$ChatConversationImplCopyWithImpl<$Res>
    extends _$ChatConversationCopyWithImpl<$Res, _$ChatConversationImpl>
    implements _$$ChatConversationImplCopyWith<$Res> {
  __$$ChatConversationImplCopyWithImpl(
    _$ChatConversationImpl _value,
    $Res Function(_$ChatConversationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatConversation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isGroup = null,
    Object? participants = null,
    Object? participantDetails = null,
    Object? lastMessage = null,
    Object? lastMessageType = null,
    Object? isLastMessageRevoked = null,
    Object? lastMessageSenderId = null,
    Object? unreadCount = null,
    Object? lastMessageTimestamp = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ChatConversationImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        isGroup: null == isGroup
            ? _value.isGroup
            : isGroup // ignore: cast_nullable_to_non_nullable
                  as bool,
        participants: null == participants
            ? _value._participants
            : participants // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        participantDetails: null == participantDetails
            ? _value._participantDetails
            : participantDetails // ignore: cast_nullable_to_non_nullable
                  as Map<String, ChatParticipant>,
        lastMessage: null == lastMessage
            ? _value.lastMessage
            : lastMessage // ignore: cast_nullable_to_non_nullable
                  as String,
        lastMessageType: null == lastMessageType
            ? _value.lastMessageType
            : lastMessageType // ignore: cast_nullable_to_non_nullable
                  as String,
        isLastMessageRevoked: null == isLastMessageRevoked
            ? _value.isLastMessageRevoked
            : isLastMessageRevoked // ignore: cast_nullable_to_non_nullable
                  as bool,
        lastMessageSenderId: null == lastMessageSenderId
            ? _value.lastMessageSenderId
            : lastMessageSenderId // ignore: cast_nullable_to_non_nullable
                  as int,
        unreadCount: null == unreadCount
            ? _value.unreadCount
            : unreadCount // ignore: cast_nullable_to_non_nullable
                  as int,
        lastMessageTimestamp: freezed == lastMessageTimestamp
            ? _value.lastMessageTimestamp
            : lastMessageTimestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$ChatConversationImpl implements _ChatConversation {
  const _$ChatConversationImpl({
    this.id = 0,
    this.name = '',
    this.isGroup = false,
    final List<int> participants = const [],
    final Map<String, ChatParticipant> participantDetails = const {},
    this.lastMessage = '',
    this.lastMessageType = '',
    this.isLastMessageRevoked = false,
    this.lastMessageSenderId = 0,
    this.unreadCount = 0,
    this.lastMessageTimestamp,
    this.createdAt,
    this.updatedAt,
  }) : _participants = participants,
       _participantDetails = participantDetails;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final bool isGroup;
  final List<int> _participants;
  @override
  @JsonKey()
  List<int> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final Map<String, ChatParticipant> _participantDetails;
  @override
  @JsonKey()
  Map<String, ChatParticipant> get participantDetails {
    if (_participantDetails is EqualUnmodifiableMapView)
      return _participantDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_participantDetails);
  }

  @override
  @JsonKey()
  final String lastMessage;
  @override
  @JsonKey()
  final String lastMessageType;
  @override
  @JsonKey()
  final bool isLastMessageRevoked;
  @override
  @JsonKey()
  final int lastMessageSenderId;
  @override
  @JsonKey()
  final int unreadCount;
  @override
  final DateTime? lastMessageTimestamp;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ChatConversation(id: $id, name: $name, isGroup: $isGroup, participants: $participants, participantDetails: $participantDetails, lastMessage: $lastMessage, lastMessageType: $lastMessageType, isLastMessageRevoked: $isLastMessageRevoked, lastMessageSenderId: $lastMessageSenderId, unreadCount: $unreadCount, lastMessageTimestamp: $lastMessageTimestamp, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatConversationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isGroup, isGroup) || other.isGroup == isGroup) &&
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
            (identical(other.lastMessageSenderId, lastMessageSenderId) ||
                other.lastMessageSenderId == lastMessageSenderId) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.lastMessageTimestamp, lastMessageTimestamp) ||
                other.lastMessageTimestamp == lastMessageTimestamp) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    isGroup,
    const DeepCollectionEquality().hash(_participants),
    const DeepCollectionEquality().hash(_participantDetails),
    lastMessage,
    lastMessageType,
    isLastMessageRevoked,
    lastMessageSenderId,
    unreadCount,
    lastMessageTimestamp,
    createdAt,
    updatedAt,
  );

  /// Create a copy of ChatConversation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatConversationImplCopyWith<_$ChatConversationImpl> get copyWith =>
      __$$ChatConversationImplCopyWithImpl<_$ChatConversationImpl>(
        this,
        _$identity,
      );
}

abstract class _ChatConversation implements ChatConversation {
  const factory _ChatConversation({
    final int id,
    final String name,
    final bool isGroup,
    final List<int> participants,
    final Map<String, ChatParticipant> participantDetails,
    final String lastMessage,
    final String lastMessageType,
    final bool isLastMessageRevoked,
    final int lastMessageSenderId,
    final int unreadCount,
    final DateTime? lastMessageTimestamp,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$ChatConversationImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get isGroup;
  @override
  List<int> get participants;
  @override
  Map<String, ChatParticipant> get participantDetails;
  @override
  String get lastMessage;
  @override
  String get lastMessageType;
  @override
  bool get isLastMessageRevoked;
  @override
  int get lastMessageSenderId;
  @override
  int get unreadCount;
  @override
  DateTime? get lastMessageTimestamp;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of ChatConversation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatConversationImplCopyWith<_$ChatConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
