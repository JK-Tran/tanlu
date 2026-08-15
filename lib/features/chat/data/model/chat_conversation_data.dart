import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/chat/data/model/chat_participant_data.dart';

part 'chat_conversation_data.freezed.dart';
part 'chat_conversation_data.g.dart';

@freezed
class ChatConversationData with _$ChatConversationData {
  const factory ChatConversationData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'isGroup') bool? isGroup,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'participants') List<int>? participants,
    @JsonKey(name: 'participantDetails') Map<String, ChatParticipantData>? participantDetails,
    @JsonKey(name: 'lastMessage') String? lastMessage,
    @JsonKey(name: 'lastMessageType') String? lastMessageType,
    @JsonKey(name: 'isLastMessageRevoked') bool? isLastMessageRevoked,
    @JsonKey(name: 'lastMessageTimestamp') DateTime? lastMessageTimestamp,
    @JsonKey(name: 'lastMessageSenderId') int? lastMessageSenderId,
    @JsonKey(name: 'unreadCount') int? unreadCount,
  }) = _ChatConversationData;

  factory ChatConversationData.fromJson(Map<String, dynamic> json) => _$ChatConversationDataFromJson(json);
}
