import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/mapper/chat_user_data_mapper.dart';
import 'package:tanlu_management/features/chat/data/model/message_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class MessageDataMapper extends BaseDataMapper<MessageData, Message>
    with DataMapperMixin<MessageData, Message> {
  MessageDataMapper(this._chatUserDataMapper);

  final ChatUserDataMapper _chatUserDataMapper;

  @override
  Message mapToEntity(MessageData? data) {
    return Message(
      id: data?.id ?? 0,
      conversationId: data?.conversationId ?? 0,
      senderId: data?.senderId ?? 0,
      text: data?.text ?? '',
      isRead: data?.isRead ?? false,
      fileUrl: data?.fileUrl,
      createdAt: DateTimeUtils.parseDateTime(data?.createdAt),
      sender: data?.sender != null ? _chatUserDataMapper.mapToEntity(data?.sender) : null,
    );
  }

  @override
  MessageData mapToData(Message entity) {
    return MessageData(
      id: entity.id,
      conversationId: entity.conversationId,
      senderId: entity.senderId,
      text: entity.text,
      isRead: entity.isRead,
      fileUrl: entity.fileUrl,
      createdAt: entity.createdAt?.toIso8601String(),
      sender: _chatUserDataMapper.mapToNullableData(entity.sender),
    );
  }
}
