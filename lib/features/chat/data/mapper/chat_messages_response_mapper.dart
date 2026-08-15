import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/mapper/chat_message_mapper.dart';
import 'package:tanlu_management/features/chat/data/mapper/pagination_cursor_mapper.dart';
import 'package:tanlu_management/features/chat/data/model/chat_messages_response_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_messages_response.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class ChatMessagesResponseMapper
    extends BaseDataMapper<ChatMessagesResponseData, ChatMessagesResponse> {
  ChatMessagesResponseMapper(this._messageMapper, this._paginationCursorMapper);

  final ChatMessageMapper _messageMapper;
  final PaginationCursorMapper _paginationCursorMapper;

  @override
  ChatMessagesResponse mapToEntity(ChatMessagesResponseData? data) {
    return ChatMessagesResponse(
      messages: data?.messages.map(_messageMapper.mapToEntity).toList() ?? [],
      anchorMessageId: data?.anchorMessageId,
      pagination: _paginationCursorMapper.mapToEntity(data?.pagination),
    );
  }
}
