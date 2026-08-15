part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default([]) List<ChatConversation> conversations,
    @Default([]) List<ChatMessage> messages,
    @Default([]) List<ChatContact> contacts,
    @Default(1) int conversationsPage,
    @Default(false) bool hasReachedMaxConversations,
    @Default(false) bool isLoadingConversations,
    @Default(false) bool isLoadingMessages,
    @Default(false) bool isLoadingBefore,
    @Default(false) bool isLoadingAfter,
    String? beforeCursor,
    String? afterCursor,
    @Default(false) bool hasMoreBefore,
    @Default(false) bool hasMoreAfter,
    @Default(false) bool isSendingMessage,
    @Default(false) bool isLoadingContacts,
    @Default(false) bool isInitializingChat,
    @Default('') String onPageError,
    @Default('') String searchQuery,
    @Default([]) List<int> onlineUserIds,
    int? currentConversationId,
  }) = _ChatState;
}
