import 'package:tanlu_management/features/chat/presentation/enums/chat_conversation_type.dart';
import 'package:tanlu_management/features/chat/presentation/enums/chat_message_type.dart';

class ChatContact {
  const ChatContact({
    required this.id,
    required this.name,
    required this.role,
    this.isOnline = false,
  });

  final String id;
  final String name;
  final String role;
  final bool isOnline;
}

class ChatConversation {
  const ChatConversation({
    required this.id,
    required this.name,
    required this.lastMessage,
    required this.timeLabel,
    required this.type,
    this.unreadCount = 0,
    this.subtitle,
    this.memberCount,
    this.pinnedMessage,
  });

  final String id;
  final String name;
  final String lastMessage;
  final String timeLabel;
  final ChatConversationType type;
  final int unreadCount;
  final String? subtitle;
  final int? memberCount;
  final String? pinnedMessage;
}

class ChatMessage {
  const ChatMessage({
    required this.id,
    required this.senderName,
    required this.content,
    required this.time,
    required this.isMine,
    this.isRead = false,
    this.dateSeparator,
    this.reactionCount = 0,
    this.type = ChatMessageType.text,
    this.showSenderName = false,
    this.stickerColor,
  });

  final String id;
  final String senderName;
  final String content;
  final String time;
  final bool isMine;
  final bool isRead;
  final String? dateSeparator;
  final int reactionCount;
  final ChatMessageType type;
  final bool showSenderName;
  final int? stickerColor;
}
