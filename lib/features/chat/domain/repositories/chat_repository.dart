import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/domain/entity/friend_request.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/core/constants/chat_constants.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';

abstract class ChatRepository {
  /// Danh bạ: cùng lớp + bạn bè, kèm `canChat` / `pendingRequest`.
  Future<List<Contact>> getContacts({
    required String currentUserId,
    required String role,
    String? classId,
  });

  Future<List<Contact>> getFriends({required String currentUserId});

  /// `true` nếu cùng lớp (qua `students` / `users.classId`) hoặc đã kết bạn.
  Future<bool> canChat({
    required String userId,
    required String role,
    required String otherUserId,
    String? classId,
  });

  Future<void> submitFriendRequest({
    required String fromUserId,
    required String toUserId,
  });

  Future<void> submitFriendDecision({
    required String requestId,
    required bool accept,
    required String currentUserId,
  });

  Stream<List<FriendRequest>> streamIncomingFriendRequests({
    required String userId,
  });

  Stream<List<Conversation>> streamConversations({
    required String currentUserId,
  });

  Stream<List<Message>> streamMessages({
    required String conversationId,
    required String currentUserId,
    int limit = ChatConstants.messagePageSize,
  });

  Future<List<Message>> fetchOlderMessages({
    required String conversationId,
    required String currentUserId,
    required String beforeMessageId,
    int limit = ChatConstants.messagePageSize,
  });

  Future<Conversation> createConversation({
    required Author currentUser,
    required List<String> participantIds,
    required String type,
    String? name,
    String? classId,
    String? centerId,
  });

  Future<Message> submitMessage({
    required String conversationId,
    required Author sender,
    required String? receiverId,
    required String text,
    String type = 'text',
    String? fileUrl,
  });

  Future<void> markMessagesAsRead({
    required String conversationId,
    required String currentUserId,
  });

  /// Cập nhật tên/avatar hội thoại từ `users` (khi profile đổi mà doc conversation không đổi).
  Future<List<Conversation>> enrichConversationsWithLiveProfiles({
    required List<Conversation> conversations,
    required String currentUserId,
  });
}
