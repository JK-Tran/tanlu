import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_participant.freezed.dart';

@freezed
class ChatParticipant with _$ChatParticipant {
  const factory ChatParticipant({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String avatarUrl,
    @Default('') String role,
  }) = _ChatParticipant;
}
