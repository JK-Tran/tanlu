import 'package:freezed_annotation/freezed_annotation.dart';
import 'chat_reaction.dart';

import 'enums/message_status.dart';

part 'chat_message.freezed.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    @Default(0) int id,
    @Default(0) int conversationId,
    @Default(0) int senderId,
    @Default('') String content,
    @Default('') String fileUrl,
    @Default('text') String type,
    @Default(MessageStatus.sent) MessageStatus status,
    @Default(false) bool isRevoked,
    @Default(0) int replyToId,
    ChatMessage? replyToMessage,
    @Default([]) List<ChatReaction> reactions,
    DateTime? createdAt,
  }) = _ChatMessage;
}
