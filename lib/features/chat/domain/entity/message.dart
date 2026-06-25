import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';

part 'message.freezed.dart';

@freezed
class Message with _$Message {
  const factory Message({
    @Default('') String id,
    @Default('') String conversationId,
    @Default('') String senderId,
    String? receiverId,
    @Default('') String text,
    @Default('text') String type,
    String? fileUrl,
    @Default('active') String status,
    @Default(false) bool isRead,
    DateTime? createdAt,
    Author? sender,
  }) = _Message;
}
