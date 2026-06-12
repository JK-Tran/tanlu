part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default([]) List<Contact> contacts,
    @Default([]) List<Conversation> conversations,
    Conversation? currentConversation,
    @Default([]) List<Message> currentMessages,
    @Default(<int>{}) Set<int> onlineUserIds,
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitting,
    @Default('') String pageError,
    @Default('') String submitError,
  }) = _ChatState;
}
