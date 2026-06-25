part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default([]) List<Contact> contacts,
    @Default([]) List<Conversation> conversations,
    @Default([]) List<FriendRequest> incomingFriendRequests,
    Conversation? currentConversation,
    @Default([]) List<Message> currentMessages,
    @Default('') String currentUserId,
    @Default('') String classId,
    @Default('') String centerId,
    @Default('') String fullName,
    @Default('') String avatar,
    @Default('') String role,
    @Default(0) int totalUnreadCount,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMessages,
    @Default(false) bool isLoadingOlderMessages,
    @Default(true) bool hasMoreOlderMessages,
    @Default(false) bool isSubmitting,
    @Default('') String onPageError,
    @Default('') String submitError,
    @Default('') String pendingPushConversationId,
    @Default(false) bool presentConversation,
  }) = _ChatState;
}
