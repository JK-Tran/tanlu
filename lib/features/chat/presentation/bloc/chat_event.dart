part of 'chat_bloc.dart';

abstract class ChatEvent {
  const ChatEvent();
}

@freezed
class ChatStarted extends ChatEvent with _$ChatStarted {
  const factory ChatStarted({
    required String userId,
    required String classId,
    @Default('') String centerId,
    @Default('') String fullName,
    @Default('') String avatar,
    @Default('') String role,
  }) = _ChatStarted;
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
class SelectConversation extends ChatEvent with _$SelectConversation {
  const factory SelectConversation(Conversation conversation) =
      _SelectConversation;
}

@freezed
class ClearCurrentConversation extends ChatEvent with _$ClearCurrentConversation {
  const factory ClearCurrentConversation() = _ClearCurrentConversation;
}

@freezed
class SendChatMessage extends ChatEvent with _$SendChatMessage {
  const factory SendChatMessage({
    required String conversationId,
    required String text,
    String? receiverId,
    @Default('text') String type,
    String? fileUrl,
  }) = _SendChatMessage;
}

@freezed
class OpenDirectChat extends ChatEvent with _$OpenDirectChat {
  const factory OpenDirectChat({required Contact contact}) = _OpenDirectChat;
}

@freezed
class CreateChatConversation extends ChatEvent with _$CreateChatConversation {
  const factory CreateChatConversation({
    required List<String> participantIds,
    required String type,
    String? name,
  }) = _CreateChatConversation;
}

@freezed
class SubmitFriendRequest extends ChatEvent with _$SubmitFriendRequest {
  const factory SubmitFriendRequest({required String toUserId}) =
      _SubmitFriendRequest;
}

@freezed
class SubmitFriendDecision extends ChatEvent with _$SubmitFriendDecision {
  const factory SubmitFriendDecision({
    required String requestId,
    required bool accept,
  }) = _SubmitFriendDecision;
}

@freezed
class LoadOlderMessages extends ChatEvent with _$LoadOlderMessages {
  const factory LoadOlderMessages() = _LoadOlderMessages;
}

@freezed
class OpenConversationFromPush extends ChatEvent with _$OpenConversationFromPush {
  const factory OpenConversationFromPush({
    required String conversationId,
  }) = _OpenConversationFromPush;
}

@freezed
class ClearPresentConversationFlag extends ChatEvent
    with _$ClearPresentConversationFlag {
  const factory ClearPresentConversationFlag() = _ClearPresentConversationFlag;
}

@freezed
class _ConversationsUpdated extends ChatEvent with _$ConversationsUpdated {
  const factory _ConversationsUpdated(List<Conversation> conversations) =
      __ConversationsUpdated;
}

@freezed
class _MessagesUpdated extends ChatEvent with _$MessagesUpdated {
  const factory _MessagesUpdated(List<Message> messages) = __MessagesUpdated;
}

@freezed
class _FriendRequestsUpdated extends ChatEvent with _$FriendRequestsUpdated {
  const factory _FriendRequestsUpdated(List<FriendRequest> requests) =
      __FriendRequestsUpdated;
}
