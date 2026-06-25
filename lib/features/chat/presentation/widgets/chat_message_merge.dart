import 'package:tanlu_management/features/chat/domain/entity/message.dart';

/// Merges optimistic (pending) messages with Firestore stream updates.
class ChatMessageMerge {
  const ChatMessageMerge._();

  static bool isPending(Message message) => message.id.startsWith('pending_');

  static String createPendingId() =>
      'pending_${DateTime.now().microsecondsSinceEpoch}';

  static List<Message> merge({
    required List<Message> local,
    required List<Message> remote,
  }) {
    final dedupedRemote = _dedupeById(remote);
    final pending = local.where(isPending).toList();
    if (pending.isEmpty) return dedupedRemote;

    final usedRemoteIds = <String>{};
    final unmatched = <Message>[];

    for (final pendingMessage in pending) {
      if (_consumeRemoteMatch(pendingMessage, dedupedRemote, usedRemoteIds)) {
        continue;
      }
      unmatched.add(pendingMessage);
    }

    if (unmatched.isEmpty) return dedupedRemote;

    return [...dedupedRemote, ...unmatched]
      ..sort(
        (a, b) => (a.createdAt ?? DateTime.fromMillisecondsSinceEpoch(0))
            .compareTo(b.createdAt ?? DateTime.fromMillisecondsSinceEpoch(0)),
      );
  }

  static List<Message> withoutId(List<Message> messages, String id) =>
      messages.where((message) => message.id != id).toList();

  static List<Message> withoutPending(List<Message> messages) =>
      messages.where((message) => !isPending(message)).toList();

  static List<Message> _dedupeById(List<Message> messages) {
    final seen = <String>{};
    final result = <Message>[];
    for (final message in messages) {
      final id = message.id;
      if (id.isEmpty || seen.add(id)) {
        result.add(message);
      }
    }
    return result;
  }

  /// Pairs each pending message with at most one remote message (same sender + type + text).
  static bool _consumeRemoteMatch(
    Message pending,
    List<Message> remote,
    Set<String> usedRemoteIds,
  ) {
    for (final message in remote) {
      if (message.id.isEmpty || usedRemoteIds.contains(message.id)) continue;
      if (message.senderId != pending.senderId) continue;
      if (message.type != pending.type) continue;

      if (message.type == 'image') {
        usedRemoteIds.add(message.id);
        return true;
      }

      if (message.text == pending.text) {
        usedRemoteIds.add(message.id);
        return true;
      }
    }

    return false;
  }
}
