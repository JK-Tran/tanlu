part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;

  const factory ChatEvent.loadConversations({@Default(false) bool isRefresh}) =
      LoadConversations;

  const factory ChatEvent.selectConversation(int conversationId) =
      SelectConversation;

  const factory ChatEvent.clearCurrentConversation() = ClearCurrentConversation;

  const factory ChatEvent.loadMessages({
    required int conversationId,
  }) = LoadMessages;

  const factory ChatEvent.loadBeforeMessages({
    required int conversationId,
  }) = LoadBeforeMessages;

  const factory ChatEvent.loadAfterMessages({
    required int conversationId,
  }) = LoadAfterMessages;

  const factory ChatEvent.jumpToMessage({
    required int conversationId,
    required int targetMessageId,
  }) = JumpToMessage;

  const factory ChatEvent.sendMessage({
    required int conversationId,
    String? content,
    @Default('text') String type,
    String? fileUrl,
    int? replyToId,
  }) = SendMessage;

  const factory ChatEvent.messageReceived(
    ChatMessage message, {
    @Default(false) bool inboxOnly,
  }) = MessageReceived;

  const factory ChatEvent.messageRead(int conversationId, int messageId) =
      MessageRead;

  /// Nhận từ WebSocket MESSAGE_READ event — cập nhật tick ✓✓ trên UI.
  const factory ChatEvent.wsMessageRead({
    required int messageId,
    required int userId,
  }) = WsMessageRead;

  const factory ChatEvent.revokeMessage(int conversationId, int messageId) =
      RevokeMessage;

  const factory ChatEvent.reactMessage(
    int conversationId,
    int messageId,
    int reactionType,
  ) = ReactMessage;

  const factory ChatEvent.wsMessageRevoked({
    required int conversationId,
    required int messageId,
  }) = WsMessageRevoked;

  const factory ChatEvent.wsMessageReacted({
    required int conversationId,
    required int messageId,
    required int userId,
    required int reactionType,
  }) = WsMessageReacted;

  const factory ChatEvent.loadContacts() = LoadContacts;

  const factory ChatEvent.initConversation(
    int targetUserId,
    void Function(int) onSuccess,
  ) = InitConversation;

  const factory ChatEvent.searchConversations(String query) =
      SearchConversations;

  const factory ChatEvent.syncOnlineUsers(List<int> userIds) = SyncOnlineUsers;
  const factory ChatEvent.userOnline(int userId) = UserOnline;
  const factory ChatEvent.userOffline(int userId) = UserOffline;
}
