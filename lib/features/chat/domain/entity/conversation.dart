import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/chat/domain/entity/participant.dart';

part 'conversation.freezed.dart';

@freezed
class Conversation with _$Conversation {
  const factory Conversation({
    @Default('') String id,
    @Default('') String name,
    @Default('direct') String type,
    String? classId,
    String? centerId,
    @Default([]) List<String> memberIds,
    @Default('') String lastMessageText,
    @Default('') String lastMessageSenderId,
    DateTime? lastMessageAt,
    DateTime? updatedAt,
    @Default(0) int unreadCount,
    @Default([]) List<Participant> members,
  }) = _Conversation;
}
