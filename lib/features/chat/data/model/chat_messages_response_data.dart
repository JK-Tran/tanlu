import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/chat/data/model/chat_message_data.dart';
import 'package:tanlu_management/features/chat/data/model/pagination_cursor_data.dart';

part 'chat_messages_response_data.freezed.dart';
part 'chat_messages_response_data.g.dart';

@freezed
class ChatMessagesResponseData with _$ChatMessagesResponseData {
  const factory ChatMessagesResponseData({
    @JsonKey(name: 'messages') @Default([]) List<ChatMessageData> messages,
    @JsonKey(name: 'anchorMessageId') int? anchorMessageId,
    @JsonKey(name: 'pagination') PaginationCursorData? pagination,
  }) = _ChatMessagesResponseData;

  factory ChatMessagesResponseData.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesResponseDataFromJson(json);
}
