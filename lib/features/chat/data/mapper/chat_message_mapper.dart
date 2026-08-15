import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/chat_message_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_message.dart';
import 'package:tanlu_management/features/chat/domain/entity/enums/message_status.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

import 'package:tanlu_management/features/chat/data/mapper/chat_reaction_mapper.dart';

@Injectable()
class ChatMessageMapper extends BaseDataMapper<ChatMessageData, ChatMessage>
    with DataMapperMixin<ChatMessageData, ChatMessage> {
  ChatMessageMapper(this._reactionMapper);

  final ChatReactionMapper _reactionMapper;

  @override
  ChatMessage mapToEntity(ChatMessageData? data) {
    return ChatMessage(
      id: data?.id ?? 0,
      conversationId: data?.conversationId ?? 0,
      senderId: data?.senderId ?? 0,
      content: data?.content ?? '',
      fileUrl: data?.fileUrl ?? '',
      type: data?.type ?? 'text',
      status: data?.status ?? MessageStatus.sent,
      isRevoked: data?.isRevoked ?? false,
      replyToId: data?.replyToId ?? 0,
      replyToMessage: data?.replyToMessage != null
          ? mapToEntity(data?.replyToMessage)
          : null,
      reactions: _reactionMapper.mapToListEntity(data?.reactions),
      createdAt: data?.createdAt,
    );
  }

  @override
  ChatMessageData mapToData(ChatMessage entity) {
    return ChatMessageData(
      id: entity.id,
      conversationId: entity.conversationId,
      senderId: entity.senderId,
      content: entity.content,
      fileUrl: entity.fileUrl,
      type: entity.type,
      status: entity.status,
      isRevoked: entity.isRevoked,
      replyToId: entity.replyToId,
      replyToMessage: entity.replyToMessage == null
          ? null
          : mapToData(entity.replyToMessage!),
      reactions: _reactionMapper.mapToListData(entity.reactions),
      createdAt: entity.createdAt,
    );
  }
}
