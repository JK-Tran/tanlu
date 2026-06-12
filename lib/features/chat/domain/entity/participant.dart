import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_user.dart';

part 'participant.freezed.dart';

@freezed
class Participant with _$Participant {
  const factory Participant({
    @Default(0) int userId,
    @Default('') String role,
    ChatUser? user,
  }) = _Participant;
}
