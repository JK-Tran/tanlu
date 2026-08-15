import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_participant.dart';

part 'chat_conversation.freezed.dart';

@freezed
class ChatConversation with _$ChatConversation {
  const factory ChatConversation({
    @Default(0) int id,
    @Default('') String name,
    @Default(false) bool isGroup,
    @Default([]) List<int> participants,
    @Default({}) Map<String, ChatParticipant> participantDetails,
    @Default('') String lastMessage,
    @Default('') String lastMessageType,
    @Default(false) bool isLastMessageRevoked,
    @Default(0) int lastMessageSenderId,
    @Default(0) int unreadCount,
    DateTime? lastMessageTimestamp,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ChatConversation;
}
