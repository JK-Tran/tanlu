import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_message.dart';
import 'package:tanlu_management/features/chat/domain/entity/pagination_cursor.dart';

part 'chat_messages_response.freezed.dart';

@freezed
class ChatMessagesResponse with _$ChatMessagesResponse {
  const factory ChatMessagesResponse({
    @Default([]) List<ChatMessage> messages,
    int? anchorMessageId,
    PaginationCursor? pagination,
  }) = _ChatMessagesResponse;
}
