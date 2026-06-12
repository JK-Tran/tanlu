import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/chat/domain/entity/participant.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';

part 'conversation.freezed.dart';

@freezed
class Conversation with _$Conversation {
  const factory Conversation({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String type,
    DateTime? updatedAt,
    @Default([]) List<Participant> participants,
    @Default([]) List<Message> messages,
  }) = _Conversation;
}
