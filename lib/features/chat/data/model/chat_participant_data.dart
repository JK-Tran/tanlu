import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_participant_data.freezed.dart';
part 'chat_participant_data.g.dart';

@freezed
class ChatParticipantData with _$ChatParticipantData {
  const factory ChatParticipantData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'role') String? role,
  }) = _ChatParticipantData;

  factory ChatParticipantData.fromJson(Map<String, dynamic> json) => _$ChatParticipantDataFromJson(json);
}
