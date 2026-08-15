import 'package:freezed_annotation/freezed_annotation.dart';
import 'chat_reaction_data.dart';

import 'package:tanlu_management/features/chat/domain/entity/enums/message_status.dart';

part 'chat_message_data.freezed.dart';
part 'chat_message_data.g.dart';

@freezed
class ChatMessageData with _$ChatMessageData {
  const factory ChatMessageData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'conversationId') int? conversationId,
    @JsonKey(name: 'senderId') int? senderId,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'status') MessageStatus? status,
    @JsonKey(name: 'isRevoked') bool? isRevoked,
    @JsonKey(name: 'replyToId') int? replyToId,
    @JsonKey(name: 'replyToMessage') ChatMessageData? replyToMessage,
    @JsonKey(name: 'reactions') List<ChatReactionData>? reactions,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
  }) = _ChatMessageData;

  factory ChatMessageData.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageDataFromJson(json);
}
