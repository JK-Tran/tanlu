import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/message_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@injectable
class MessageDataMapper extends BaseDataMapper<MessageData, Message>
    with DataMapperMixin<MessageData, Message> {
  Message mapToEntityWithContext(
    MessageData? data, {
    required String conversationId,
    bool isRead = true,
  }) {
    final senderId = data?.senderId ?? '';
    return Message(
      id: data?.id ?? '',
      conversationId: conversationId,
      senderId: senderId,
      receiverId: data?.receiverId,
      text: data?.text ?? '',
      type: data?.type ?? 'text',
      fileUrl: data?.fileUrl,
      status: data?.status ?? 'active',
      isRead: isRead,
      createdAt: data?.createdAt,
      sender: senderId.isEmpty
          ? null
          : Author(
              id: senderId,
              fullName: data?.fullName ?? '',
              avatar: data?.avatar ?? '',
            ),
    );
  }

  @override
  Message mapToEntity(MessageData? data) {
    return mapToEntityWithContext(data, conversationId: '');
  }

  @override
  MessageData mapToData(Message entity) {
    return MessageData(
      id: entity.id.isEmpty ? null : entity.id,
      senderId: entity.senderId,
      receiverId: entity.receiverId,
      fullName: entity.sender?.fullName,
      avatar: entity.sender?.avatar,
      type: entity.type,
      text: entity.text,
      fileUrl: entity.fileUrl,
      status: entity.status,
      createdAt: entity.createdAt,
    );
  }
}
