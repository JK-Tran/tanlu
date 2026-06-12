import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/chat/data/model/chat_user_data.dart';

part 'message_data.freezed.dart';
part 'message_data.g.dart';

@freezed
class MessageData with _$MessageData {
  const factory MessageData({
    @JsonKey() int? id,
    @JsonKey() int? conversationId,
    @JsonKey() int? senderId,
    @JsonKey() String? text,
    @JsonKey() bool? isRead,
    @JsonKey() String? fileUrl,
    @JsonKey() String? createdAt,
    @JsonKey() ChatUserData? sender,
  }) = _MessageData;

  const MessageData._();

  factory MessageData.fromJson(Map<String, dynamic> json) =>
      _$MessageDataFromJson(json);
}
