import 'package:flutter/material.dart';
import 'package:tanlu_management/features/chat/presentation/enums/chat_conversation_type.dart';
import 'package:tanlu_management/features/chat/presentation/enums/chat_message_type.dart';
import 'package:tanlu_management/features/chat/presentation/models/chat_ui_models.dart';

abstract final class ChatMockData {
  ChatMockData._();

  static const conversations = [
    ChatConversation(
      id: 'group-sunflower',
      name: 'Lớp Mầm 2 - SUNFLOWER',
      lastMessage: 'Cô Hà: Mai lớp mình đi tham quan nhé 🚌',
      timeLabel: '08:40',
      type: ChatConversationType.group,
      unreadCount: 2,
      subtitle: '28 thành viên',
      memberCount: 28,
      pinnedMessage:
          'Nhắc phụ huynh chuẩn bị đồ dùng cho buổi tham quan ngày mai.',
    ),
    ChatConversation(
      id: 'direct-mai',
      name: 'Cô Mai',
      lastMessage: 'Dạ em cảm ơn cô ạ!',
      timeLabel: 'Hôm qua',
      type: ChatConversationType.direct,
      subtitle: 'Giáo viên · Lớp Mầm 2',
    ),
    ChatConversation(
      id: 'direct-lan',
      name: 'Chị Lan',
      lastMessage: 'Bé nhà chị hôm nay ăn uống tốt lắm ạ',
      timeLabel: 'Hôm qua',
      type: ChatConversationType.direct,
      unreadCount: 1,
      subtitle: 'Phụ huynh · Lớp Mầm 2',
    ),
    ChatConversation(
      id: 'group-rose',
      name: 'Lớp Mầm 1 - ROSE',
      lastMessage: 'Cô Linh: Ảnh hoạt động buổi sáng đã đăng bảng tin',
      timeLabel: 'Thứ 5',
      type: ChatConversationType.group,
      subtitle: '24 thành viên',
      memberCount: 24,
    ),
    ChatConversation(
      id: 'direct-tuan',
      name: 'Anh Tuấn',
      lastMessage: 'Ok cảm ơn cô!',
      timeLabel: '12/06',
      type: ChatConversationType.direct,
      subtitle: 'Phụ huynh · Lớp Mầm 2',
    ),
  ];

  static const contacts = [
    ChatContact(id: 'c1', name: 'Cô Mai', role: 'Giáo viên', isOnline: true),
    ChatContact(id: 'c2', name: 'Chị Lan', role: 'Phụ huynh', isOnline: true),
    ChatContact(
      id: 'c3',
      name: 'Anh Tuấn',
      role: 'Phụ huynh',
      isOnline: false,
    ),
    ChatContact(id: 'c4', name: 'Chị Hương', role: 'Phụ huynh'),
    ChatContact(id: 'c5', name: 'Cô Linh', role: 'Giáo viên'),
  ];

  static const groupMessages = [
    ChatMessage(
      id: 'm0',
      senderName: '',
      content: '',
      time: '',
      isMine: false,
      dateSeparator: 'Hôm nay',
    ),
    ChatMessage(
      id: 'm1',
      senderName: 'Cô Hà',
      content:
          'Chào cả nhà, mai lớp mình đi tham quan công viên. Phụ huynh nhớ chuẩn bị mũ, nước và đồ ăn nhẹ cho bé nhé 🌳',
      time: '08:12',
      isMine: false,
      showSenderName: true,
      reactionCount: 2,
    ),
    ChatMessage(
      id: 'm2',
      senderName: 'Chị Lan',
      content: 'Dạ em ghi nhận ạ, mai bé nhà em sẽ mang theo đủ đồ.',
      time: '08:25',
      isMine: false,
      showSenderName: true,
    ),
    ChatMessage(
      id: 'm3',
      senderName: 'Tôi',
      content: 'Cảm ơn các phụ huynh đã phối hợp!',
      time: '08:30',
      isMine: true,
      isRead: true,
    ),
    ChatMessage(
      id: 'm4',
      senderName: 'Tôi',
      content: 'Mai lớp mình đi tham quan nhé 🚌',
      time: '08:40',
      isMine: true,
      isRead: true,
    ),
  ];

  static const directMessages = [
    ChatMessage(
      id: 'd0',
      senderName: '',
      content: '',
      time: '',
      isMine: false,
      dateSeparator: 'Hôm nay',
    ),
    ChatMessage(
      id: 'd1',
      senderName: 'Cô Mai',
      content: 'Chị Lan ơi, bé nhà mình hôm nay ăn trưa rất ngoan nhé.',
      time: '09:10',
      isMine: false,
    ),
    ChatMessage(
      id: 'd2',
      senderName: 'Tôi',
      content: 'Dạ em cảm ơn cô ạ!',
      time: '09:15',
      isMine: true,
      isRead: true,
    ),
    ChatMessage(
      id: 'd3',
      senderName: 'Cô Mai',
      content: '',
      time: '09:16',
      isMine: false,
      type: ChatMessageType.sticker,
      stickerColor: 0xFFFFF0D6,
    ),
  ];

  static List<ChatMessage> messagesFor(String conversationId) {
    if (conversationId.startsWith('direct')) {
      return directMessages;
    }
    return groupMessages;
  }

  static ChatConversation? conversationById(String id) {
    for (final c in conversations) {
      if (c.id == id) return c;
    }
    return null;
  }

  static Color stickerColor(int value) => Color(value);
}
