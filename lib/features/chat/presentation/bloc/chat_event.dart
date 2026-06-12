part of 'chat_bloc.dart';

abstract class ChatEvent {
  const ChatEvent();
}

@freezed
class ChatStarted extends ChatEvent with _$ChatStarted {
  const factory ChatStarted() = _ChatStarted;
}

@freezed
class ClearChat extends ChatEvent with _$ClearChat {
  const factory ClearChat() = _ClearChat;
}

@freezed
class FetchContacts extends ChatEvent with _$FetchContacts {
  const factory FetchContacts() = _FetchContacts;
}

@freezed
class FetchConversations extends ChatEvent with _$FetchConversations {
  const factory FetchConversations() = _FetchConversations;
}

@freezed
class SelectConversation extends ChatEvent with _$SelectConversation {
  const factory SelectConversation(Conversation conversation) = _SelectConversation;
}

@freezed
class FetchMessages extends ChatEvent with _$FetchMessages {
  const factory FetchMessages(int conversationId) = _FetchMessages;
}

@freezed
class SendChatMessage extends ChatEvent with _$SendChatMessage {
  const factory SendChatMessage({
    required int conversationId,
    required String text,
    dynamic file,
    String? fileUrl,
  }) = _SendChatMessage;
}

@freezed
class ReceiveMessage extends ChatEvent with _$ReceiveMessage {
  const factory ReceiveMessage(Message message) = _ReceiveMessage;
}

@freezed
class CreateChatConversation extends ChatEvent with _$CreateChatConversation {
  const factory CreateChatConversation({
    required List<int> participantIds,
    required String type,
    String? name,
  }) = _CreateChatConversation;
}

@freezed
class ChatUserOnline extends ChatEvent with _$ChatUserOnline {
  const factory ChatUserOnline(int userId) = _ChatUserOnline;
}

@freezed
class ChatUserOffline extends ChatEvent with _$ChatUserOffline {
  const factory ChatUserOffline(int userId) = _ChatUserOffline;
}

@freezed
class MessagesRead extends ChatEvent with _$MessagesRead {
  const factory MessagesRead({
    required int conversationId,
    required int readBy,
  }) = _MessagesRead;
}