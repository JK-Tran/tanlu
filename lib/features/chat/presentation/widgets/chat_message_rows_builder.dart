import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail_page/widgets/chat_message_item.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_format.dart';

/// Builds list rows from messages sorted oldest → newest.
class ChatMessageRowsBuilder {
  const ChatMessageRowsBuilder._();

  static List<ChatMessageRow> build({
    required List<Message> messages,
    required String currentUserId,
  }) {
    final rows = <ChatMessageRow>[];
    String? lastDayKey;

    for (final message in messages) {
      final displayAt = message.createdAt ?? DateTime.now();
      final dayKey = ChatFormat.dayKey(displayAt);

      if (dayKey.isNotEmpty && dayKey != lastDayKey) {
        rows.add(
          ChatMessageRow.separator(
            ChatFormat.dateSeparatorLabel(displayAt)!,
            separatorKey: 'sep_$dayKey',
          ),
        );
        lastDayKey = dayKey;
      }

      rows.add(
        ChatMessageRow.message(
          message,
          isMine: message.senderId == currentUserId,
        ),
      );
    }

    return rows;
  }
}
