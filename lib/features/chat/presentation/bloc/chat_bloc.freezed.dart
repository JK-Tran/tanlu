// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ChatEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadConversationsImplCopyWith<$Res> {
  factory _$$LoadConversationsImplCopyWith(
    _$LoadConversationsImpl value,
    $Res Function(_$LoadConversationsImpl) then,
  ) = __$$LoadConversationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$LoadConversationsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$LoadConversationsImpl>
    implements _$$LoadConversationsImplCopyWith<$Res> {
  __$$LoadConversationsImplCopyWithImpl(
    _$LoadConversationsImpl _value,
    $Res Function(_$LoadConversationsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isRefresh = null}) {
    return _then(
      _$LoadConversationsImpl(
        isRefresh: null == isRefresh
            ? _value.isRefresh
            : isRefresh // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$LoadConversationsImpl implements LoadConversations {
  const _$LoadConversationsImpl({this.isRefresh = false});

  @override
  @JsonKey()
  final bool isRefresh;

  @override
  String toString() {
    return 'ChatEvent.loadConversations(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadConversationsImpl &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadConversationsImplCopyWith<_$LoadConversationsImpl> get copyWith =>
      __$$LoadConversationsImplCopyWithImpl<_$LoadConversationsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return loadConversations(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return loadConversations?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (loadConversations != null) {
      return loadConversations(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return loadConversations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return loadConversations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (loadConversations != null) {
      return loadConversations(this);
    }
    return orElse();
  }
}

abstract class LoadConversations implements ChatEvent {
  const factory LoadConversations({final bool isRefresh}) =
      _$LoadConversationsImpl;

  bool get isRefresh;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadConversationsImplCopyWith<_$LoadConversationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectConversationImplCopyWith<$Res> {
  factory _$$SelectConversationImplCopyWith(
    _$SelectConversationImpl value,
    $Res Function(_$SelectConversationImpl) then,
  ) = __$$SelectConversationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int conversationId});
}

/// @nodoc
class __$$SelectConversationImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SelectConversationImpl>
    implements _$$SelectConversationImplCopyWith<$Res> {
  __$$SelectConversationImplCopyWithImpl(
    _$SelectConversationImpl _value,
    $Res Function(_$SelectConversationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$SelectConversationImpl(
        null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SelectConversationImpl implements SelectConversation {
  const _$SelectConversationImpl(this.conversationId);

  @override
  final int conversationId;

  @override
  String toString() {
    return 'ChatEvent.selectConversation(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectConversationImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectConversationImplCopyWith<_$SelectConversationImpl> get copyWith =>
      __$$SelectConversationImplCopyWithImpl<_$SelectConversationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return selectConversation(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return selectConversation?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (selectConversation != null) {
      return selectConversation(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return selectConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return selectConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (selectConversation != null) {
      return selectConversation(this);
    }
    return orElse();
  }
}

abstract class SelectConversation implements ChatEvent {
  const factory SelectConversation(final int conversationId) =
      _$SelectConversationImpl;

  int get conversationId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectConversationImplCopyWith<_$SelectConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCurrentConversationImplCopyWith<$Res> {
  factory _$$ClearCurrentConversationImplCopyWith(
    _$ClearCurrentConversationImpl value,
    $Res Function(_$ClearCurrentConversationImpl) then,
  ) = __$$ClearCurrentConversationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCurrentConversationImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ClearCurrentConversationImpl>
    implements _$$ClearCurrentConversationImplCopyWith<$Res> {
  __$$ClearCurrentConversationImplCopyWithImpl(
    _$ClearCurrentConversationImpl _value,
    $Res Function(_$ClearCurrentConversationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCurrentConversationImpl implements ClearCurrentConversation {
  const _$ClearCurrentConversationImpl();

  @override
  String toString() {
    return 'ChatEvent.clearCurrentConversation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCurrentConversationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return clearCurrentConversation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return clearCurrentConversation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (clearCurrentConversation != null) {
      return clearCurrentConversation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return clearCurrentConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return clearCurrentConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (clearCurrentConversation != null) {
      return clearCurrentConversation(this);
    }
    return orElse();
  }
}

abstract class ClearCurrentConversation implements ChatEvent {
  const factory ClearCurrentConversation() = _$ClearCurrentConversationImpl;
}

/// @nodoc
abstract class _$$LoadMessagesImplCopyWith<$Res> {
  factory _$$LoadMessagesImplCopyWith(
    _$LoadMessagesImpl value,
    $Res Function(_$LoadMessagesImpl) then,
  ) = __$$LoadMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int conversationId});
}

/// @nodoc
class __$$LoadMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$LoadMessagesImpl>
    implements _$$LoadMessagesImplCopyWith<$Res> {
  __$$LoadMessagesImplCopyWithImpl(
    _$LoadMessagesImpl _value,
    $Res Function(_$LoadMessagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$LoadMessagesImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$LoadMessagesImpl implements LoadMessages {
  const _$LoadMessagesImpl({required this.conversationId});

  @override
  final int conversationId;

  @override
  String toString() {
    return 'ChatEvent.loadMessages(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMessagesImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMessagesImplCopyWith<_$LoadMessagesImpl> get copyWith =>
      __$$LoadMessagesImplCopyWithImpl<_$LoadMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return loadMessages(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return loadMessages?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (loadMessages != null) {
      return loadMessages(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return loadMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return loadMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (loadMessages != null) {
      return loadMessages(this);
    }
    return orElse();
  }
}

abstract class LoadMessages implements ChatEvent {
  const factory LoadMessages({required final int conversationId}) =
      _$LoadMessagesImpl;

  int get conversationId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMessagesImplCopyWith<_$LoadMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadBeforeMessagesImplCopyWith<$Res> {
  factory _$$LoadBeforeMessagesImplCopyWith(
    _$LoadBeforeMessagesImpl value,
    $Res Function(_$LoadBeforeMessagesImpl) then,
  ) = __$$LoadBeforeMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int conversationId});
}

/// @nodoc
class __$$LoadBeforeMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$LoadBeforeMessagesImpl>
    implements _$$LoadBeforeMessagesImplCopyWith<$Res> {
  __$$LoadBeforeMessagesImplCopyWithImpl(
    _$LoadBeforeMessagesImpl _value,
    $Res Function(_$LoadBeforeMessagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$LoadBeforeMessagesImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$LoadBeforeMessagesImpl implements LoadBeforeMessages {
  const _$LoadBeforeMessagesImpl({required this.conversationId});

  @override
  final int conversationId;

  @override
  String toString() {
    return 'ChatEvent.loadBeforeMessages(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadBeforeMessagesImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadBeforeMessagesImplCopyWith<_$LoadBeforeMessagesImpl> get copyWith =>
      __$$LoadBeforeMessagesImplCopyWithImpl<_$LoadBeforeMessagesImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return loadBeforeMessages(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return loadBeforeMessages?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (loadBeforeMessages != null) {
      return loadBeforeMessages(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return loadBeforeMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return loadBeforeMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (loadBeforeMessages != null) {
      return loadBeforeMessages(this);
    }
    return orElse();
  }
}

abstract class LoadBeforeMessages implements ChatEvent {
  const factory LoadBeforeMessages({required final int conversationId}) =
      _$LoadBeforeMessagesImpl;

  int get conversationId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadBeforeMessagesImplCopyWith<_$LoadBeforeMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAfterMessagesImplCopyWith<$Res> {
  factory _$$LoadAfterMessagesImplCopyWith(
    _$LoadAfterMessagesImpl value,
    $Res Function(_$LoadAfterMessagesImpl) then,
  ) = __$$LoadAfterMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int conversationId});
}

/// @nodoc
class __$$LoadAfterMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$LoadAfterMessagesImpl>
    implements _$$LoadAfterMessagesImplCopyWith<$Res> {
  __$$LoadAfterMessagesImplCopyWithImpl(
    _$LoadAfterMessagesImpl _value,
    $Res Function(_$LoadAfterMessagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$LoadAfterMessagesImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$LoadAfterMessagesImpl implements LoadAfterMessages {
  const _$LoadAfterMessagesImpl({required this.conversationId});

  @override
  final int conversationId;

  @override
  String toString() {
    return 'ChatEvent.loadAfterMessages(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAfterMessagesImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAfterMessagesImplCopyWith<_$LoadAfterMessagesImpl> get copyWith =>
      __$$LoadAfterMessagesImplCopyWithImpl<_$LoadAfterMessagesImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return loadAfterMessages(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return loadAfterMessages?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (loadAfterMessages != null) {
      return loadAfterMessages(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return loadAfterMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return loadAfterMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (loadAfterMessages != null) {
      return loadAfterMessages(this);
    }
    return orElse();
  }
}

abstract class LoadAfterMessages implements ChatEvent {
  const factory LoadAfterMessages({required final int conversationId}) =
      _$LoadAfterMessagesImpl;

  int get conversationId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAfterMessagesImplCopyWith<_$LoadAfterMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JumpToMessageImplCopyWith<$Res> {
  factory _$$JumpToMessageImplCopyWith(
    _$JumpToMessageImpl value,
    $Res Function(_$JumpToMessageImpl) then,
  ) = __$$JumpToMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int conversationId, int targetMessageId});
}

/// @nodoc
class __$$JumpToMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$JumpToMessageImpl>
    implements _$$JumpToMessageImplCopyWith<$Res> {
  __$$JumpToMessageImplCopyWithImpl(
    _$JumpToMessageImpl _value,
    $Res Function(_$JumpToMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null, Object? targetMessageId = null}) {
    return _then(
      _$JumpToMessageImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
        targetMessageId: null == targetMessageId
            ? _value.targetMessageId
            : targetMessageId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$JumpToMessageImpl implements JumpToMessage {
  const _$JumpToMessageImpl({
    required this.conversationId,
    required this.targetMessageId,
  });

  @override
  final int conversationId;
  @override
  final int targetMessageId;

  @override
  String toString() {
    return 'ChatEvent.jumpToMessage(conversationId: $conversationId, targetMessageId: $targetMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JumpToMessageImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.targetMessageId, targetMessageId) ||
                other.targetMessageId == targetMessageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, targetMessageId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JumpToMessageImplCopyWith<_$JumpToMessageImpl> get copyWith =>
      __$$JumpToMessageImplCopyWithImpl<_$JumpToMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return jumpToMessage(conversationId, targetMessageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return jumpToMessage?.call(conversationId, targetMessageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (jumpToMessage != null) {
      return jumpToMessage(conversationId, targetMessageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return jumpToMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return jumpToMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (jumpToMessage != null) {
      return jumpToMessage(this);
    }
    return orElse();
  }
}

abstract class JumpToMessage implements ChatEvent {
  const factory JumpToMessage({
    required final int conversationId,
    required final int targetMessageId,
  }) = _$JumpToMessageImpl;

  int get conversationId;
  int get targetMessageId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JumpToMessageImplCopyWith<_$JumpToMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
    _$SendMessageImpl value,
    $Res Function(_$SendMessageImpl) then,
  ) = __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int conversationId,
    String? content,
    String type,
    String? fileUrl,
    int? replyToId,
  });
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
    _$SendMessageImpl _value,
    $Res Function(_$SendMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? content = freezed,
    Object? type = null,
    Object? fileUrl = freezed,
    Object? replyToId = freezed,
  }) {
    return _then(
      _$SendMessageImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
        content: freezed == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        fileUrl: freezed == fileUrl
            ? _value.fileUrl
            : fileUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        replyToId: freezed == replyToId
            ? _value.replyToId
            : replyToId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$SendMessageImpl implements SendMessage {
  const _$SendMessageImpl({
    required this.conversationId,
    this.content,
    this.type = 'text',
    this.fileUrl,
    this.replyToId,
  });

  @override
  final int conversationId;
  @override
  final String? content;
  @override
  @JsonKey()
  final String type;
  @override
  final String? fileUrl;
  @override
  final int? replyToId;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(conversationId: $conversationId, content: $content, type: $type, fileUrl: $fileUrl, replyToId: $replyToId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.replyToId, replyToId) ||
                other.replyToId == replyToId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    conversationId,
    content,
    type,
    fileUrl,
    replyToId,
  );

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return sendMessage(conversationId, content, type, fileUrl, replyToId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return sendMessage?.call(conversationId, content, type, fileUrl, replyToId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(conversationId, content, type, fileUrl, replyToId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements ChatEvent {
  const factory SendMessage({
    required final int conversationId,
    final String? content,
    final String type,
    final String? fileUrl,
    final int? replyToId,
  }) = _$SendMessageImpl;

  int get conversationId;
  String? get content;
  String get type;
  String? get fileUrl;
  int? get replyToId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReceivedImplCopyWith<$Res> {
  factory _$$MessageReceivedImplCopyWith(
    _$MessageReceivedImpl value,
    $Res Function(_$MessageReceivedImpl) then,
  ) = __$$MessageReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message, bool inboxOnly});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageReceivedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$MessageReceivedImpl>
    implements _$$MessageReceivedImplCopyWith<$Res> {
  __$$MessageReceivedImplCopyWithImpl(
    _$MessageReceivedImpl _value,
    $Res Function(_$MessageReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? inboxOnly = null}) {
    return _then(
      _$MessageReceivedImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as ChatMessage,
        inboxOnly: null == inboxOnly
            ? _value.inboxOnly
            : inboxOnly // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$MessageReceivedImpl implements MessageReceived {
  const _$MessageReceivedImpl(this.message, {this.inboxOnly = false});

  @override
  final ChatMessage message;
  @override
  @JsonKey()
  final bool inboxOnly;

  @override
  String toString() {
    return 'ChatEvent.messageReceived(message: $message, inboxOnly: $inboxOnly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReceivedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.inboxOnly, inboxOnly) ||
                other.inboxOnly == inboxOnly));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, inboxOnly);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      __$$MessageReceivedImplCopyWithImpl<_$MessageReceivedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return messageReceived(message, inboxOnly);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return messageReceived?.call(message, inboxOnly);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(message, inboxOnly);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return messageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return messageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(this);
    }
    return orElse();
  }
}

abstract class MessageReceived implements ChatEvent {
  const factory MessageReceived(
    final ChatMessage message, {
    final bool inboxOnly,
  }) = _$MessageReceivedImpl;

  ChatMessage get message;
  bool get inboxOnly;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReadImplCopyWith<$Res> {
  factory _$$MessageReadImplCopyWith(
    _$MessageReadImpl value,
    $Res Function(_$MessageReadImpl) then,
  ) = __$$MessageReadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int conversationId, int messageId});
}

/// @nodoc
class __$$MessageReadImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$MessageReadImpl>
    implements _$$MessageReadImplCopyWith<$Res> {
  __$$MessageReadImplCopyWithImpl(
    _$MessageReadImpl _value,
    $Res Function(_$MessageReadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null, Object? messageId = null}) {
    return _then(
      _$MessageReadImpl(
        null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
        null == messageId
            ? _value.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$MessageReadImpl implements MessageRead {
  const _$MessageReadImpl(this.conversationId, this.messageId);

  @override
  final int conversationId;
  @override
  final int messageId;

  @override
  String toString() {
    return 'ChatEvent.messageRead(conversationId: $conversationId, messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReadImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, messageId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReadImplCopyWith<_$MessageReadImpl> get copyWith =>
      __$$MessageReadImplCopyWithImpl<_$MessageReadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return messageRead(conversationId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return messageRead?.call(conversationId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(conversationId, messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return messageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return messageRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(this);
    }
    return orElse();
  }
}

abstract class MessageRead implements ChatEvent {
  const factory MessageRead(final int conversationId, final int messageId) =
      _$MessageReadImpl;

  int get conversationId;
  int get messageId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageReadImplCopyWith<_$MessageReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WsMessageReadImplCopyWith<$Res> {
  factory _$$WsMessageReadImplCopyWith(
    _$WsMessageReadImpl value,
    $Res Function(_$WsMessageReadImpl) then,
  ) = __$$WsMessageReadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int messageId, int userId});
}

/// @nodoc
class __$$WsMessageReadImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$WsMessageReadImpl>
    implements _$$WsMessageReadImplCopyWith<$Res> {
  __$$WsMessageReadImplCopyWithImpl(
    _$WsMessageReadImpl _value,
    $Res Function(_$WsMessageReadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messageId = null, Object? userId = null}) {
    return _then(
      _$WsMessageReadImpl(
        messageId: null == messageId
            ? _value.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$WsMessageReadImpl implements WsMessageRead {
  const _$WsMessageReadImpl({required this.messageId, required this.userId});

  @override
  final int messageId;
  @override
  final int userId;

  @override
  String toString() {
    return 'ChatEvent.wsMessageRead(messageId: $messageId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WsMessageReadImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId, userId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WsMessageReadImplCopyWith<_$WsMessageReadImpl> get copyWith =>
      __$$WsMessageReadImplCopyWithImpl<_$WsMessageReadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return wsMessageRead(messageId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return wsMessageRead?.call(messageId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (wsMessageRead != null) {
      return wsMessageRead(messageId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return wsMessageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return wsMessageRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (wsMessageRead != null) {
      return wsMessageRead(this);
    }
    return orElse();
  }
}

abstract class WsMessageRead implements ChatEvent {
  const factory WsMessageRead({
    required final int messageId,
    required final int userId,
  }) = _$WsMessageReadImpl;

  int get messageId;
  int get userId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WsMessageReadImplCopyWith<_$WsMessageReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RevokeMessageImplCopyWith<$Res> {
  factory _$$RevokeMessageImplCopyWith(
    _$RevokeMessageImpl value,
    $Res Function(_$RevokeMessageImpl) then,
  ) = __$$RevokeMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int conversationId, int messageId});
}

/// @nodoc
class __$$RevokeMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$RevokeMessageImpl>
    implements _$$RevokeMessageImplCopyWith<$Res> {
  __$$RevokeMessageImplCopyWithImpl(
    _$RevokeMessageImpl _value,
    $Res Function(_$RevokeMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null, Object? messageId = null}) {
    return _then(
      _$RevokeMessageImpl(
        null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
        null == messageId
            ? _value.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$RevokeMessageImpl implements RevokeMessage {
  const _$RevokeMessageImpl(this.conversationId, this.messageId);

  @override
  final int conversationId;
  @override
  final int messageId;

  @override
  String toString() {
    return 'ChatEvent.revokeMessage(conversationId: $conversationId, messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevokeMessageImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, messageId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RevokeMessageImplCopyWith<_$RevokeMessageImpl> get copyWith =>
      __$$RevokeMessageImplCopyWithImpl<_$RevokeMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return revokeMessage(conversationId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return revokeMessage?.call(conversationId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (revokeMessage != null) {
      return revokeMessage(conversationId, messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return revokeMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return revokeMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (revokeMessage != null) {
      return revokeMessage(this);
    }
    return orElse();
  }
}

abstract class RevokeMessage implements ChatEvent {
  const factory RevokeMessage(final int conversationId, final int messageId) =
      _$RevokeMessageImpl;

  int get conversationId;
  int get messageId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RevokeMessageImplCopyWith<_$RevokeMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReactMessageImplCopyWith<$Res> {
  factory _$$ReactMessageImplCopyWith(
    _$ReactMessageImpl value,
    $Res Function(_$ReactMessageImpl) then,
  ) = __$$ReactMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int conversationId, int messageId, int reactionType});
}

/// @nodoc
class __$$ReactMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ReactMessageImpl>
    implements _$$ReactMessageImplCopyWith<$Res> {
  __$$ReactMessageImplCopyWithImpl(
    _$ReactMessageImpl _value,
    $Res Function(_$ReactMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? messageId = null,
    Object? reactionType = null,
  }) {
    return _then(
      _$ReactMessageImpl(
        null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
        null == messageId
            ? _value.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int,
        null == reactionType
            ? _value.reactionType
            : reactionType // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ReactMessageImpl implements ReactMessage {
  const _$ReactMessageImpl(
    this.conversationId,
    this.messageId,
    this.reactionType,
  );

  @override
  final int conversationId;
  @override
  final int messageId;
  @override
  final int reactionType;

  @override
  String toString() {
    return 'ChatEvent.reactMessage(conversationId: $conversationId, messageId: $messageId, reactionType: $reactionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReactMessageImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.reactionType, reactionType) ||
                other.reactionType == reactionType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, conversationId, messageId, reactionType);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactMessageImplCopyWith<_$ReactMessageImpl> get copyWith =>
      __$$ReactMessageImplCopyWithImpl<_$ReactMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return reactMessage(conversationId, messageId, reactionType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return reactMessage?.call(conversationId, messageId, reactionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (reactMessage != null) {
      return reactMessage(conversationId, messageId, reactionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return reactMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return reactMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (reactMessage != null) {
      return reactMessage(this);
    }
    return orElse();
  }
}

abstract class ReactMessage implements ChatEvent {
  const factory ReactMessage(
    final int conversationId,
    final int messageId,
    final int reactionType,
  ) = _$ReactMessageImpl;

  int get conversationId;
  int get messageId;
  int get reactionType;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactMessageImplCopyWith<_$ReactMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WsMessageRevokedImplCopyWith<$Res> {
  factory _$$WsMessageRevokedImplCopyWith(
    _$WsMessageRevokedImpl value,
    $Res Function(_$WsMessageRevokedImpl) then,
  ) = __$$WsMessageRevokedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int conversationId, int messageId});
}

/// @nodoc
class __$$WsMessageRevokedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$WsMessageRevokedImpl>
    implements _$$WsMessageRevokedImplCopyWith<$Res> {
  __$$WsMessageRevokedImplCopyWithImpl(
    _$WsMessageRevokedImpl _value,
    $Res Function(_$WsMessageRevokedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null, Object? messageId = null}) {
    return _then(
      _$WsMessageRevokedImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
        messageId: null == messageId
            ? _value.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$WsMessageRevokedImpl implements WsMessageRevoked {
  const _$WsMessageRevokedImpl({
    required this.conversationId,
    required this.messageId,
  });

  @override
  final int conversationId;
  @override
  final int messageId;

  @override
  String toString() {
    return 'ChatEvent.wsMessageRevoked(conversationId: $conversationId, messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WsMessageRevokedImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, messageId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WsMessageRevokedImplCopyWith<_$WsMessageRevokedImpl> get copyWith =>
      __$$WsMessageRevokedImplCopyWithImpl<_$WsMessageRevokedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return wsMessageRevoked(conversationId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return wsMessageRevoked?.call(conversationId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (wsMessageRevoked != null) {
      return wsMessageRevoked(conversationId, messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return wsMessageRevoked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return wsMessageRevoked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (wsMessageRevoked != null) {
      return wsMessageRevoked(this);
    }
    return orElse();
  }
}

abstract class WsMessageRevoked implements ChatEvent {
  const factory WsMessageRevoked({
    required final int conversationId,
    required final int messageId,
  }) = _$WsMessageRevokedImpl;

  int get conversationId;
  int get messageId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WsMessageRevokedImplCopyWith<_$WsMessageRevokedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WsMessageReactedImplCopyWith<$Res> {
  factory _$$WsMessageReactedImplCopyWith(
    _$WsMessageReactedImpl value,
    $Res Function(_$WsMessageReactedImpl) then,
  ) = __$$WsMessageReactedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int conversationId, int messageId, int userId, int reactionType});
}

/// @nodoc
class __$$WsMessageReactedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$WsMessageReactedImpl>
    implements _$$WsMessageReactedImplCopyWith<$Res> {
  __$$WsMessageReactedImplCopyWithImpl(
    _$WsMessageReactedImpl _value,
    $Res Function(_$WsMessageReactedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? messageId = null,
    Object? userId = null,
    Object? reactionType = null,
  }) {
    return _then(
      _$WsMessageReactedImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
        messageId: null == messageId
            ? _value.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        reactionType: null == reactionType
            ? _value.reactionType
            : reactionType // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$WsMessageReactedImpl implements WsMessageReacted {
  const _$WsMessageReactedImpl({
    required this.conversationId,
    required this.messageId,
    required this.userId,
    required this.reactionType,
  });

  @override
  final int conversationId;
  @override
  final int messageId;
  @override
  final int userId;
  @override
  final int reactionType;

  @override
  String toString() {
    return 'ChatEvent.wsMessageReacted(conversationId: $conversationId, messageId: $messageId, userId: $userId, reactionType: $reactionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WsMessageReactedImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reactionType, reactionType) ||
                other.reactionType == reactionType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, conversationId, messageId, userId, reactionType);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WsMessageReactedImplCopyWith<_$WsMessageReactedImpl> get copyWith =>
      __$$WsMessageReactedImplCopyWithImpl<_$WsMessageReactedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return wsMessageReacted(conversationId, messageId, userId, reactionType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return wsMessageReacted?.call(
      conversationId,
      messageId,
      userId,
      reactionType,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (wsMessageReacted != null) {
      return wsMessageReacted(conversationId, messageId, userId, reactionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return wsMessageReacted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return wsMessageReacted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (wsMessageReacted != null) {
      return wsMessageReacted(this);
    }
    return orElse();
  }
}

abstract class WsMessageReacted implements ChatEvent {
  const factory WsMessageReacted({
    required final int conversationId,
    required final int messageId,
    required final int userId,
    required final int reactionType,
  }) = _$WsMessageReactedImpl;

  int get conversationId;
  int get messageId;
  int get userId;
  int get reactionType;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WsMessageReactedImplCopyWith<_$WsMessageReactedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadContactsImplCopyWith<$Res> {
  factory _$$LoadContactsImplCopyWith(
    _$LoadContactsImpl value,
    $Res Function(_$LoadContactsImpl) then,
  ) = __$$LoadContactsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadContactsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$LoadContactsImpl>
    implements _$$LoadContactsImplCopyWith<$Res> {
  __$$LoadContactsImplCopyWithImpl(
    _$LoadContactsImpl _value,
    $Res Function(_$LoadContactsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadContactsImpl implements LoadContacts {
  const _$LoadContactsImpl();

  @override
  String toString() {
    return 'ChatEvent.loadContacts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadContactsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return loadContacts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return loadContacts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (loadContacts != null) {
      return loadContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return loadContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return loadContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (loadContacts != null) {
      return loadContacts(this);
    }
    return orElse();
  }
}

abstract class LoadContacts implements ChatEvent {
  const factory LoadContacts() = _$LoadContactsImpl;
}

/// @nodoc
abstract class _$$InitConversationImplCopyWith<$Res> {
  factory _$$InitConversationImplCopyWith(
    _$InitConversationImpl value,
    $Res Function(_$InitConversationImpl) then,
  ) = __$$InitConversationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int targetUserId, void Function(int) onSuccess});
}

/// @nodoc
class __$$InitConversationImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$InitConversationImpl>
    implements _$$InitConversationImplCopyWith<$Res> {
  __$$InitConversationImplCopyWithImpl(
    _$InitConversationImpl _value,
    $Res Function(_$InitConversationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? targetUserId = null, Object? onSuccess = null}) {
    return _then(
      _$InitConversationImpl(
        null == targetUserId
            ? _value.targetUserId
            : targetUserId // ignore: cast_nullable_to_non_nullable
                  as int,
        null == onSuccess
            ? _value.onSuccess
            : onSuccess // ignore: cast_nullable_to_non_nullable
                  as void Function(int),
      ),
    );
  }
}

/// @nodoc

class _$InitConversationImpl implements InitConversation {
  const _$InitConversationImpl(this.targetUserId, this.onSuccess);

  @override
  final int targetUserId;
  @override
  final void Function(int) onSuccess;

  @override
  String toString() {
    return 'ChatEvent.initConversation(targetUserId: $targetUserId, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitConversationImpl &&
            (identical(other.targetUserId, targetUserId) ||
                other.targetUserId == targetUserId) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, targetUserId, onSuccess);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitConversationImplCopyWith<_$InitConversationImpl> get copyWith =>
      __$$InitConversationImplCopyWithImpl<_$InitConversationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return initConversation(targetUserId, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return initConversation?.call(targetUserId, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (initConversation != null) {
      return initConversation(targetUserId, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return initConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return initConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (initConversation != null) {
      return initConversation(this);
    }
    return orElse();
  }
}

abstract class InitConversation implements ChatEvent {
  const factory InitConversation(
    final int targetUserId,
    final void Function(int) onSuccess,
  ) = _$InitConversationImpl;

  int get targetUserId;
  void Function(int) get onSuccess;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitConversationImplCopyWith<_$InitConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchConversationsImplCopyWith<$Res> {
  factory _$$SearchConversationsImplCopyWith(
    _$SearchConversationsImpl value,
    $Res Function(_$SearchConversationsImpl) then,
  ) = __$$SearchConversationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchConversationsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SearchConversationsImpl>
    implements _$$SearchConversationsImplCopyWith<$Res> {
  __$$SearchConversationsImplCopyWithImpl(
    _$SearchConversationsImpl _value,
    $Res Function(_$SearchConversationsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$SearchConversationsImpl(
        null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SearchConversationsImpl implements SearchConversations {
  const _$SearchConversationsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ChatEvent.searchConversations(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchConversationsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchConversationsImplCopyWith<_$SearchConversationsImpl> get copyWith =>
      __$$SearchConversationsImplCopyWithImpl<_$SearchConversationsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return searchConversations(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return searchConversations?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (searchConversations != null) {
      return searchConversations(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return searchConversations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return searchConversations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (searchConversations != null) {
      return searchConversations(this);
    }
    return orElse();
  }
}

abstract class SearchConversations implements ChatEvent {
  const factory SearchConversations(final String query) =
      _$SearchConversationsImpl;

  String get query;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchConversationsImplCopyWith<_$SearchConversationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncOnlineUsersImplCopyWith<$Res> {
  factory _$$SyncOnlineUsersImplCopyWith(
    _$SyncOnlineUsersImpl value,
    $Res Function(_$SyncOnlineUsersImpl) then,
  ) = __$$SyncOnlineUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> userIds});
}

/// @nodoc
class __$$SyncOnlineUsersImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SyncOnlineUsersImpl>
    implements _$$SyncOnlineUsersImplCopyWith<$Res> {
  __$$SyncOnlineUsersImplCopyWithImpl(
    _$SyncOnlineUsersImpl _value,
    $Res Function(_$SyncOnlineUsersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userIds = null}) {
    return _then(
      _$SyncOnlineUsersImpl(
        null == userIds
            ? _value._userIds
            : userIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
      ),
    );
  }
}

/// @nodoc

class _$SyncOnlineUsersImpl implements SyncOnlineUsers {
  const _$SyncOnlineUsersImpl(final List<int> userIds) : _userIds = userIds;

  final List<int> _userIds;
  @override
  List<int> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  String toString() {
    return 'ChatEvent.syncOnlineUsers(userIds: $userIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncOnlineUsersImpl &&
            const DeepCollectionEquality().equals(other._userIds, _userIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_userIds));

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncOnlineUsersImplCopyWith<_$SyncOnlineUsersImpl> get copyWith =>
      __$$SyncOnlineUsersImplCopyWithImpl<_$SyncOnlineUsersImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return syncOnlineUsers(userIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return syncOnlineUsers?.call(userIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (syncOnlineUsers != null) {
      return syncOnlineUsers(userIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return syncOnlineUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return syncOnlineUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (syncOnlineUsers != null) {
      return syncOnlineUsers(this);
    }
    return orElse();
  }
}

abstract class SyncOnlineUsers implements ChatEvent {
  const factory SyncOnlineUsers(final List<int> userIds) =
      _$SyncOnlineUsersImpl;

  List<int> get userIds;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SyncOnlineUsersImplCopyWith<_$SyncOnlineUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserOnlineImplCopyWith<$Res> {
  factory _$$UserOnlineImplCopyWith(
    _$UserOnlineImpl value,
    $Res Function(_$UserOnlineImpl) then,
  ) = __$$UserOnlineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$UserOnlineImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$UserOnlineImpl>
    implements _$$UserOnlineImplCopyWith<$Res> {
  __$$UserOnlineImplCopyWithImpl(
    _$UserOnlineImpl _value,
    $Res Function(_$UserOnlineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null}) {
    return _then(
      _$UserOnlineImpl(
        null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$UserOnlineImpl implements UserOnline {
  const _$UserOnlineImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'ChatEvent.userOnline(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserOnlineImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserOnlineImplCopyWith<_$UserOnlineImpl> get copyWith =>
      __$$UserOnlineImplCopyWithImpl<_$UserOnlineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return userOnline(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return userOnline?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (userOnline != null) {
      return userOnline(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return userOnline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return userOnline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (userOnline != null) {
      return userOnline(this);
    }
    return orElse();
  }
}

abstract class UserOnline implements ChatEvent {
  const factory UserOnline(final int userId) = _$UserOnlineImpl;

  int get userId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserOnlineImplCopyWith<_$UserOnlineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserOfflineImplCopyWith<$Res> {
  factory _$$UserOfflineImplCopyWith(
    _$UserOfflineImpl value,
    $Res Function(_$UserOfflineImpl) then,
  ) = __$$UserOfflineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$UserOfflineImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$UserOfflineImpl>
    implements _$$UserOfflineImplCopyWith<$Res> {
  __$$UserOfflineImplCopyWithImpl(
    _$UserOfflineImpl _value,
    $Res Function(_$UserOfflineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null}) {
    return _then(
      _$UserOfflineImpl(
        null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$UserOfflineImpl implements UserOffline {
  const _$UserOfflineImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'ChatEvent.userOffline(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserOfflineImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserOfflineImplCopyWith<_$UserOfflineImpl> get copyWith =>
      __$$UserOfflineImplCopyWithImpl<_$UserOfflineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) loadConversations,
    required TResult Function(int conversationId) selectConversation,
    required TResult Function() clearCurrentConversation,
    required TResult Function(int conversationId) loadMessages,
    required TResult Function(int conversationId) loadBeforeMessages,
    required TResult Function(int conversationId) loadAfterMessages,
    required TResult Function(int conversationId, int targetMessageId)
    jumpToMessage,
    required TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )
    sendMessage,
    required TResult Function(ChatMessage message, bool inboxOnly)
    messageReceived,
    required TResult Function(int conversationId, int messageId) messageRead,
    required TResult Function(int messageId, int userId) wsMessageRead,
    required TResult Function(int conversationId, int messageId) revokeMessage,
    required TResult Function(
      int conversationId,
      int messageId,
      int reactionType,
    )
    reactMessage,
    required TResult Function(int conversationId, int messageId)
    wsMessageRevoked,
    required TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )
    wsMessageReacted,
    required TResult Function() loadContacts,
    required TResult Function(int targetUserId, void Function(int) onSuccess)
    initConversation,
    required TResult Function(String query) searchConversations,
    required TResult Function(List<int> userIds) syncOnlineUsers,
    required TResult Function(int userId) userOnline,
    required TResult Function(int userId) userOffline,
  }) {
    return userOffline(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? loadConversations,
    TResult? Function(int conversationId)? selectConversation,
    TResult? Function()? clearCurrentConversation,
    TResult? Function(int conversationId)? loadMessages,
    TResult? Function(int conversationId)? loadBeforeMessages,
    TResult? Function(int conversationId)? loadAfterMessages,
    TResult? Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult? Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult? Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult? Function(int conversationId, int messageId)? messageRead,
    TResult? Function(int messageId, int userId)? wsMessageRead,
    TResult? Function(int conversationId, int messageId)? revokeMessage,
    TResult? Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult? Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult? Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult? Function()? loadContacts,
    TResult? Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult? Function(String query)? searchConversations,
    TResult? Function(List<int> userIds)? syncOnlineUsers,
    TResult? Function(int userId)? userOnline,
    TResult? Function(int userId)? userOffline,
  }) {
    return userOffline?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? loadConversations,
    TResult Function(int conversationId)? selectConversation,
    TResult Function()? clearCurrentConversation,
    TResult Function(int conversationId)? loadMessages,
    TResult Function(int conversationId)? loadBeforeMessages,
    TResult Function(int conversationId)? loadAfterMessages,
    TResult Function(int conversationId, int targetMessageId)? jumpToMessage,
    TResult Function(
      int conversationId,
      String? content,
      String type,
      String? fileUrl,
      int? replyToId,
    )?
    sendMessage,
    TResult Function(ChatMessage message, bool inboxOnly)? messageReceived,
    TResult Function(int conversationId, int messageId)? messageRead,
    TResult Function(int messageId, int userId)? wsMessageRead,
    TResult Function(int conversationId, int messageId)? revokeMessage,
    TResult Function(int conversationId, int messageId, int reactionType)?
    reactMessage,
    TResult Function(int conversationId, int messageId)? wsMessageRevoked,
    TResult Function(
      int conversationId,
      int messageId,
      int userId,
      int reactionType,
    )?
    wsMessageReacted,
    TResult Function()? loadContacts,
    TResult Function(int targetUserId, void Function(int) onSuccess)?
    initConversation,
    TResult Function(String query)? searchConversations,
    TResult Function(List<int> userIds)? syncOnlineUsers,
    TResult Function(int userId)? userOnline,
    TResult Function(int userId)? userOffline,
    required TResult orElse(),
  }) {
    if (userOffline != null) {
      return userOffline(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(SelectConversation value) selectConversation,
    required TResult Function(ClearCurrentConversation value)
    clearCurrentConversation,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(LoadBeforeMessages value) loadBeforeMessages,
    required TResult Function(LoadAfterMessages value) loadAfterMessages,
    required TResult Function(JumpToMessage value) jumpToMessage,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(MessageReceived value) messageReceived,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(WsMessageRead value) wsMessageRead,
    required TResult Function(RevokeMessage value) revokeMessage,
    required TResult Function(ReactMessage value) reactMessage,
    required TResult Function(WsMessageRevoked value) wsMessageRevoked,
    required TResult Function(WsMessageReacted value) wsMessageReacted,
    required TResult Function(LoadContacts value) loadContacts,
    required TResult Function(InitConversation value) initConversation,
    required TResult Function(SearchConversations value) searchConversations,
    required TResult Function(SyncOnlineUsers value) syncOnlineUsers,
    required TResult Function(UserOnline value) userOnline,
    required TResult Function(UserOffline value) userOffline,
  }) {
    return userOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(SelectConversation value)? selectConversation,
    TResult? Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult? Function(LoadMessages value)? loadMessages,
    TResult? Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult? Function(LoadAfterMessages value)? loadAfterMessages,
    TResult? Function(JumpToMessage value)? jumpToMessage,
    TResult? Function(SendMessage value)? sendMessage,
    TResult? Function(MessageReceived value)? messageReceived,
    TResult? Function(MessageRead value)? messageRead,
    TResult? Function(WsMessageRead value)? wsMessageRead,
    TResult? Function(RevokeMessage value)? revokeMessage,
    TResult? Function(ReactMessage value)? reactMessage,
    TResult? Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult? Function(WsMessageReacted value)? wsMessageReacted,
    TResult? Function(LoadContacts value)? loadContacts,
    TResult? Function(InitConversation value)? initConversation,
    TResult? Function(SearchConversations value)? searchConversations,
    TResult? Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult? Function(UserOnline value)? userOnline,
    TResult? Function(UserOffline value)? userOffline,
  }) {
    return userOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(SelectConversation value)? selectConversation,
    TResult Function(ClearCurrentConversation value)? clearCurrentConversation,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(LoadBeforeMessages value)? loadBeforeMessages,
    TResult Function(LoadAfterMessages value)? loadAfterMessages,
    TResult Function(JumpToMessage value)? jumpToMessage,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(MessageReceived value)? messageReceived,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(WsMessageRead value)? wsMessageRead,
    TResult Function(RevokeMessage value)? revokeMessage,
    TResult Function(ReactMessage value)? reactMessage,
    TResult Function(WsMessageRevoked value)? wsMessageRevoked,
    TResult Function(WsMessageReacted value)? wsMessageReacted,
    TResult Function(LoadContacts value)? loadContacts,
    TResult Function(InitConversation value)? initConversation,
    TResult Function(SearchConversations value)? searchConversations,
    TResult Function(SyncOnlineUsers value)? syncOnlineUsers,
    TResult Function(UserOnline value)? userOnline,
    TResult Function(UserOffline value)? userOffline,
    required TResult orElse(),
  }) {
    if (userOffline != null) {
      return userOffline(this);
    }
    return orElse();
  }
}

abstract class UserOffline implements ChatEvent {
  const factory UserOffline(final int userId) = _$UserOfflineImpl;

  int get userId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserOfflineImplCopyWith<_$UserOfflineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  List<ChatConversation> get conversations =>
      throw _privateConstructorUsedError;
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  List<ChatContact> get contacts => throw _privateConstructorUsedError;
  int get conversationsPage => throw _privateConstructorUsedError;
  bool get hasReachedMaxConversations => throw _privateConstructorUsedError;
  bool get isLoadingConversations => throw _privateConstructorUsedError;
  bool get isLoadingMessages => throw _privateConstructorUsedError;
  bool get isLoadingBefore => throw _privateConstructorUsedError;
  bool get isLoadingAfter => throw _privateConstructorUsedError;
  String? get beforeCursor => throw _privateConstructorUsedError;
  String? get afterCursor => throw _privateConstructorUsedError;
  bool get hasMoreBefore => throw _privateConstructorUsedError;
  bool get hasMoreAfter => throw _privateConstructorUsedError;
  bool get isSendingMessage => throw _privateConstructorUsedError;
  bool get isLoadingContacts => throw _privateConstructorUsedError;
  bool get isInitializingChat => throw _privateConstructorUsedError;
  String get onPageError => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  List<int> get onlineUserIds => throw _privateConstructorUsedError;
  int? get currentConversationId => throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({
    List<ChatConversation> conversations,
    List<ChatMessage> messages,
    List<ChatContact> contacts,
    int conversationsPage,
    bool hasReachedMaxConversations,
    bool isLoadingConversations,
    bool isLoadingMessages,
    bool isLoadingBefore,
    bool isLoadingAfter,
    String? beforeCursor,
    String? afterCursor,
    bool hasMoreBefore,
    bool hasMoreAfter,
    bool isSendingMessage,
    bool isLoadingContacts,
    bool isInitializingChat,
    String onPageError,
    String searchQuery,
    List<int> onlineUserIds,
    int? currentConversationId,
  });
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? messages = null,
    Object? contacts = null,
    Object? conversationsPage = null,
    Object? hasReachedMaxConversations = null,
    Object? isLoadingConversations = null,
    Object? isLoadingMessages = null,
    Object? isLoadingBefore = null,
    Object? isLoadingAfter = null,
    Object? beforeCursor = freezed,
    Object? afterCursor = freezed,
    Object? hasMoreBefore = null,
    Object? hasMoreAfter = null,
    Object? isSendingMessage = null,
    Object? isLoadingContacts = null,
    Object? isInitializingChat = null,
    Object? onPageError = null,
    Object? searchQuery = null,
    Object? onlineUserIds = null,
    Object? currentConversationId = freezed,
  }) {
    return _then(
      _value.copyWith(
            conversations: null == conversations
                ? _value.conversations
                : conversations // ignore: cast_nullable_to_non_nullable
                      as List<ChatConversation>,
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<ChatMessage>,
            contacts: null == contacts
                ? _value.contacts
                : contacts // ignore: cast_nullable_to_non_nullable
                      as List<ChatContact>,
            conversationsPage: null == conversationsPage
                ? _value.conversationsPage
                : conversationsPage // ignore: cast_nullable_to_non_nullable
                      as int,
            hasReachedMaxConversations: null == hasReachedMaxConversations
                ? _value.hasReachedMaxConversations
                : hasReachedMaxConversations // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoadingConversations: null == isLoadingConversations
                ? _value.isLoadingConversations
                : isLoadingConversations // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoadingMessages: null == isLoadingMessages
                ? _value.isLoadingMessages
                : isLoadingMessages // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoadingBefore: null == isLoadingBefore
                ? _value.isLoadingBefore
                : isLoadingBefore // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoadingAfter: null == isLoadingAfter
                ? _value.isLoadingAfter
                : isLoadingAfter // ignore: cast_nullable_to_non_nullable
                      as bool,
            beforeCursor: freezed == beforeCursor
                ? _value.beforeCursor
                : beforeCursor // ignore: cast_nullable_to_non_nullable
                      as String?,
            afterCursor: freezed == afterCursor
                ? _value.afterCursor
                : afterCursor // ignore: cast_nullable_to_non_nullable
                      as String?,
            hasMoreBefore: null == hasMoreBefore
                ? _value.hasMoreBefore
                : hasMoreBefore // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasMoreAfter: null == hasMoreAfter
                ? _value.hasMoreAfter
                : hasMoreAfter // ignore: cast_nullable_to_non_nullable
                      as bool,
            isSendingMessage: null == isSendingMessage
                ? _value.isSendingMessage
                : isSendingMessage // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoadingContacts: null == isLoadingContacts
                ? _value.isLoadingContacts
                : isLoadingContacts // ignore: cast_nullable_to_non_nullable
                      as bool,
            isInitializingChat: null == isInitializingChat
                ? _value.isInitializingChat
                : isInitializingChat // ignore: cast_nullable_to_non_nullable
                      as bool,
            onPageError: null == onPageError
                ? _value.onPageError
                : onPageError // ignore: cast_nullable_to_non_nullable
                      as String,
            searchQuery: null == searchQuery
                ? _value.searchQuery
                : searchQuery // ignore: cast_nullable_to_non_nullable
                      as String,
            onlineUserIds: null == onlineUserIds
                ? _value.onlineUserIds
                : onlineUserIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            currentConversationId: freezed == currentConversationId
                ? _value.currentConversationId
                : currentConversationId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
    _$ChatStateImpl value,
    $Res Function(_$ChatStateImpl) then,
  ) = __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ChatConversation> conversations,
    List<ChatMessage> messages,
    List<ChatContact> contacts,
    int conversationsPage,
    bool hasReachedMaxConversations,
    bool isLoadingConversations,
    bool isLoadingMessages,
    bool isLoadingBefore,
    bool isLoadingAfter,
    String? beforeCursor,
    String? afterCursor,
    bool hasMoreBefore,
    bool hasMoreAfter,
    bool isSendingMessage,
    bool isLoadingContacts,
    bool isInitializingChat,
    String onPageError,
    String searchQuery,
    List<int> onlineUserIds,
    int? currentConversationId,
  });
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
    _$ChatStateImpl _value,
    $Res Function(_$ChatStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
    Object? messages = null,
    Object? contacts = null,
    Object? conversationsPage = null,
    Object? hasReachedMaxConversations = null,
    Object? isLoadingConversations = null,
    Object? isLoadingMessages = null,
    Object? isLoadingBefore = null,
    Object? isLoadingAfter = null,
    Object? beforeCursor = freezed,
    Object? afterCursor = freezed,
    Object? hasMoreBefore = null,
    Object? hasMoreAfter = null,
    Object? isSendingMessage = null,
    Object? isLoadingContacts = null,
    Object? isInitializingChat = null,
    Object? onPageError = null,
    Object? searchQuery = null,
    Object? onlineUserIds = null,
    Object? currentConversationId = freezed,
  }) {
    return _then(
      _$ChatStateImpl(
        conversations: null == conversations
            ? _value._conversations
            : conversations // ignore: cast_nullable_to_non_nullable
                  as List<ChatConversation>,
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<ChatMessage>,
        contacts: null == contacts
            ? _value._contacts
            : contacts // ignore: cast_nullable_to_non_nullable
                  as List<ChatContact>,
        conversationsPage: null == conversationsPage
            ? _value.conversationsPage
            : conversationsPage // ignore: cast_nullable_to_non_nullable
                  as int,
        hasReachedMaxConversations: null == hasReachedMaxConversations
            ? _value.hasReachedMaxConversations
            : hasReachedMaxConversations // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoadingConversations: null == isLoadingConversations
            ? _value.isLoadingConversations
            : isLoadingConversations // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoadingMessages: null == isLoadingMessages
            ? _value.isLoadingMessages
            : isLoadingMessages // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoadingBefore: null == isLoadingBefore
            ? _value.isLoadingBefore
            : isLoadingBefore // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoadingAfter: null == isLoadingAfter
            ? _value.isLoadingAfter
            : isLoadingAfter // ignore: cast_nullable_to_non_nullable
                  as bool,
        beforeCursor: freezed == beforeCursor
            ? _value.beforeCursor
            : beforeCursor // ignore: cast_nullable_to_non_nullable
                  as String?,
        afterCursor: freezed == afterCursor
            ? _value.afterCursor
            : afterCursor // ignore: cast_nullable_to_non_nullable
                  as String?,
        hasMoreBefore: null == hasMoreBefore
            ? _value.hasMoreBefore
            : hasMoreBefore // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasMoreAfter: null == hasMoreAfter
            ? _value.hasMoreAfter
            : hasMoreAfter // ignore: cast_nullable_to_non_nullable
                  as bool,
        isSendingMessage: null == isSendingMessage
            ? _value.isSendingMessage
            : isSendingMessage // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoadingContacts: null == isLoadingContacts
            ? _value.isLoadingContacts
            : isLoadingContacts // ignore: cast_nullable_to_non_nullable
                  as bool,
        isInitializingChat: null == isInitializingChat
            ? _value.isInitializingChat
            : isInitializingChat // ignore: cast_nullable_to_non_nullable
                  as bool,
        onPageError: null == onPageError
            ? _value.onPageError
            : onPageError // ignore: cast_nullable_to_non_nullable
                  as String,
        searchQuery: null == searchQuery
            ? _value.searchQuery
            : searchQuery // ignore: cast_nullable_to_non_nullable
                  as String,
        onlineUserIds: null == onlineUserIds
            ? _value._onlineUserIds
            : onlineUserIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        currentConversationId: freezed == currentConversationId
            ? _value.currentConversationId
            : currentConversationId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl({
    final List<ChatConversation> conversations = const [],
    final List<ChatMessage> messages = const [],
    final List<ChatContact> contacts = const [],
    this.conversationsPage = 1,
    this.hasReachedMaxConversations = false,
    this.isLoadingConversations = false,
    this.isLoadingMessages = false,
    this.isLoadingBefore = false,
    this.isLoadingAfter = false,
    this.beforeCursor,
    this.afterCursor,
    this.hasMoreBefore = false,
    this.hasMoreAfter = false,
    this.isSendingMessage = false,
    this.isLoadingContacts = false,
    this.isInitializingChat = false,
    this.onPageError = '',
    this.searchQuery = '',
    final List<int> onlineUserIds = const [],
    this.currentConversationId,
  }) : _conversations = conversations,
       _messages = messages,
       _contacts = contacts,
       _onlineUserIds = onlineUserIds;

  final List<ChatConversation> _conversations;
  @override
  @JsonKey()
  List<ChatConversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  final List<ChatMessage> _messages;
  @override
  @JsonKey()
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final List<ChatContact> _contacts;
  @override
  @JsonKey()
  List<ChatContact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  @JsonKey()
  final int conversationsPage;
  @override
  @JsonKey()
  final bool hasReachedMaxConversations;
  @override
  @JsonKey()
  final bool isLoadingConversations;
  @override
  @JsonKey()
  final bool isLoadingMessages;
  @override
  @JsonKey()
  final bool isLoadingBefore;
  @override
  @JsonKey()
  final bool isLoadingAfter;
  @override
  final String? beforeCursor;
  @override
  final String? afterCursor;
  @override
  @JsonKey()
  final bool hasMoreBefore;
  @override
  @JsonKey()
  final bool hasMoreAfter;
  @override
  @JsonKey()
  final bool isSendingMessage;
  @override
  @JsonKey()
  final bool isLoadingContacts;
  @override
  @JsonKey()
  final bool isInitializingChat;
  @override
  @JsonKey()
  final String onPageError;
  @override
  @JsonKey()
  final String searchQuery;
  final List<int> _onlineUserIds;
  @override
  @JsonKey()
  List<int> get onlineUserIds {
    if (_onlineUserIds is EqualUnmodifiableListView) return _onlineUserIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onlineUserIds);
  }

  @override
  final int? currentConversationId;

  @override
  String toString() {
    return 'ChatState(conversations: $conversations, messages: $messages, contacts: $contacts, conversationsPage: $conversationsPage, hasReachedMaxConversations: $hasReachedMaxConversations, isLoadingConversations: $isLoadingConversations, isLoadingMessages: $isLoadingMessages, isLoadingBefore: $isLoadingBefore, isLoadingAfter: $isLoadingAfter, beforeCursor: $beforeCursor, afterCursor: $afterCursor, hasMoreBefore: $hasMoreBefore, hasMoreAfter: $hasMoreAfter, isSendingMessage: $isSendingMessage, isLoadingContacts: $isLoadingContacts, isInitializingChat: $isInitializingChat, onPageError: $onPageError, searchQuery: $searchQuery, onlineUserIds: $onlineUserIds, currentConversationId: $currentConversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            const DeepCollectionEquality().equals(
              other._conversations,
              _conversations,
            ) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.conversationsPage, conversationsPage) ||
                other.conversationsPage == conversationsPage) &&
            (identical(
                  other.hasReachedMaxConversations,
                  hasReachedMaxConversations,
                ) ||
                other.hasReachedMaxConversations ==
                    hasReachedMaxConversations) &&
            (identical(other.isLoadingConversations, isLoadingConversations) ||
                other.isLoadingConversations == isLoadingConversations) &&
            (identical(other.isLoadingMessages, isLoadingMessages) ||
                other.isLoadingMessages == isLoadingMessages) &&
            (identical(other.isLoadingBefore, isLoadingBefore) ||
                other.isLoadingBefore == isLoadingBefore) &&
            (identical(other.isLoadingAfter, isLoadingAfter) ||
                other.isLoadingAfter == isLoadingAfter) &&
            (identical(other.beforeCursor, beforeCursor) ||
                other.beforeCursor == beforeCursor) &&
            (identical(other.afterCursor, afterCursor) ||
                other.afterCursor == afterCursor) &&
            (identical(other.hasMoreBefore, hasMoreBefore) ||
                other.hasMoreBefore == hasMoreBefore) &&
            (identical(other.hasMoreAfter, hasMoreAfter) ||
                other.hasMoreAfter == hasMoreAfter) &&
            (identical(other.isSendingMessage, isSendingMessage) ||
                other.isSendingMessage == isSendingMessage) &&
            (identical(other.isLoadingContacts, isLoadingContacts) ||
                other.isLoadingContacts == isLoadingContacts) &&
            (identical(other.isInitializingChat, isInitializingChat) ||
                other.isInitializingChat == isInitializingChat) &&
            (identical(other.onPageError, onPageError) ||
                other.onPageError == onPageError) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            const DeepCollectionEquality().equals(
              other._onlineUserIds,
              _onlineUserIds,
            ) &&
            (identical(other.currentConversationId, currentConversationId) ||
                other.currentConversationId == currentConversationId));
  }

  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    const DeepCollectionEquality().hash(_conversations),
    const DeepCollectionEquality().hash(_messages),
    const DeepCollectionEquality().hash(_contacts),
    conversationsPage,
    hasReachedMaxConversations,
    isLoadingConversations,
    isLoadingMessages,
    isLoadingBefore,
    isLoadingAfter,
    beforeCursor,
    afterCursor,
    hasMoreBefore,
    hasMoreAfter,
    isSendingMessage,
    isLoadingContacts,
    isInitializingChat,
    onPageError,
    searchQuery,
    const DeepCollectionEquality().hash(_onlineUserIds),
    currentConversationId,
  ]);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState({
    final List<ChatConversation> conversations,
    final List<ChatMessage> messages,
    final List<ChatContact> contacts,
    final int conversationsPage,
    final bool hasReachedMaxConversations,
    final bool isLoadingConversations,
    final bool isLoadingMessages,
    final bool isLoadingBefore,
    final bool isLoadingAfter,
    final String? beforeCursor,
    final String? afterCursor,
    final bool hasMoreBefore,
    final bool hasMoreAfter,
    final bool isSendingMessage,
    final bool isLoadingContacts,
    final bool isInitializingChat,
    final String onPageError,
    final String searchQuery,
    final List<int> onlineUserIds,
    final int? currentConversationId,
  }) = _$ChatStateImpl;

  @override
  List<ChatConversation> get conversations;
  @override
  List<ChatMessage> get messages;
  @override
  List<ChatContact> get contacts;
  @override
  int get conversationsPage;
  @override
  bool get hasReachedMaxConversations;
  @override
  bool get isLoadingConversations;
  @override
  bool get isLoadingMessages;
  @override
  bool get isLoadingBefore;
  @override
  bool get isLoadingAfter;
  @override
  String? get beforeCursor;
  @override
  String? get afterCursor;
  @override
  bool get hasMoreBefore;
  @override
  bool get hasMoreAfter;
  @override
  bool get isSendingMessage;
  @override
  bool get isLoadingContacts;
  @override
  bool get isInitializingChat;
  @override
  String get onPageError;
  @override
  String get searchQuery;
  @override
  List<int> get onlineUserIds;
  @override
  int? get currentConversationId;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
