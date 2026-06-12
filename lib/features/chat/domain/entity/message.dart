import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_user.dart';

part 'message.freezed.dart';

@freezed
class Message with _$Message {
  const factory Message({
    @Default(0) int id,
    @Default(0) int conversationId,
    @Default(0) int senderId,
    @Default('') String text,
    @Default(false) bool isRead,
    String? fileUrl,
    DateTime? createdAt,
    ChatUser? sender,
  }) = _Message;
}
