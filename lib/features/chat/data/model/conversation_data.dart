import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/chat/data/model/participant_data.dart';
import 'package:tanlu_management/features/chat/data/model/message_data.dart';

part 'conversation_data.freezed.dart';
part 'conversation_data.g.dart';

@freezed
class ConversationData with _$ConversationData {
  const factory ConversationData({
    @JsonKey() int? id,
    @JsonKey() String? name,
    @JsonKey() String? type,
    @JsonKey() String? updatedAt,
    @JsonKey() List<ParticipantData>? participants,
    @JsonKey() List<MessageData>? messages,
  }) = _ConversationData;

  const ConversationData._();

  factory ConversationData.fromJson(Map<String, dynamic> json) =>
      _$ConversationDataFromJson(json);
}
