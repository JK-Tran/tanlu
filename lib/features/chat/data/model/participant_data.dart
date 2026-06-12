import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/chat/data/model/chat_user_data.dart';

part 'participant_data.freezed.dart';
part 'participant_data.g.dart';

@freezed
class ParticipantData with _$ParticipantData {
  const factory ParticipantData({
    @JsonKey() int? userId,
    @JsonKey() String? role,
    @JsonKey() ChatUserData? user,
  }) = _ParticipantData;

  const ParticipantData._();

  factory ParticipantData.fromJson(Map<String, dynamic> json) =>
      _$ParticipantDataFromJson(json);
}
