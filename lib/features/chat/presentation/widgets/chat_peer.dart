import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/domain/entity/participant.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_format.dart';

class ChatPeerView {
  const ChatPeerView({
    required this.id,
    required this.name,
    this.avatar = '',
    this.role = '',
    this.subtitle = '',
  });

  final String id;
  final String name;
  final String avatar;
  final String role;
  final String subtitle;

  String get roleLabel => ChatFormat.roleLabel(role);
}

abstract final class ChatPeer {
  ChatPeer._();

  static ChatPeerView fromConversation(
    Conversation conversation,
    String currentUserId, {
    List<Contact> contacts = const [],
  }) {
    if (conversation.type == 'group') {
      final count = conversation.memberIds.length;
      return ChatPeerView(
        id: conversation.id,
        name: conversation.name.isEmpty ? 'Nhóm chat' : conversation.name,
        subtitle: count > 0 ? '$count thành viên' : '',
      );
    }

    final otherId = conversation.memberIds.firstWhere(
      (id) => id != currentUserId,
      orElse: () => '',
    );
    if (otherId.isNotEmpty) {
      for (final contact in contacts) {
        if (contact.id == otherId) return fromContact(contact);
      }
    }

    final peer = _peerParticipant(conversation, currentUserId);
    if (peer != null) {
      return ChatPeerView(
        id: peer.userId,
        name: peer.fullName.isEmpty ? 'Người dùng' : peer.fullName,
        avatar: peer.avatar,
        role: peer.role,
        subtitle: ChatFormat.roleLabel(peer.role),
      );
    }

    return ChatPeerView(
      id: '',
      name: conversation.name.isEmpty ? 'Tin nhắn' : conversation.name,
    );
  }

  static ChatPeerView fromContact(Contact contact) {
    return ChatPeerView(
      id: contact.id,
      name: contact.fullName.isEmpty ? 'Người dùng' : contact.fullName,
      avatar: contact.avatar,
      role: contact.role,
      subtitle: ChatFormat.roleLabel(contact.role),
    );
  }

  static Participant? _peerParticipant(
    Conversation conversation,
    String currentUserId,
  ) {
    for (final member in conversation.members) {
      if (member.userId.isNotEmpty && member.userId != currentUserId) {
        return member;
      }
    }

    final otherId = conversation.memberIds.firstWhere(
      (id) => id != currentUserId,
      orElse: () => '',
    );
    if (otherId.isEmpty) return null;
    return Participant(userId: otherId);
  }
}
