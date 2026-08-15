import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/mapper/chat_participant_mapper.dart';
import 'package:tanlu_management/features/chat/data/model/chat_conversation_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_conversation.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class ChatConversationMapper extends BaseDataMapper<ChatConversationData, ChatConversation> with DataMapperMixin<ChatConversationData, ChatConversation> {
  ChatConversationMapper(this._participantMapper);

  final ChatParticipantMapper _participantMapper;

  @override
  ChatConversation mapToEntity(ChatConversationData? data) {
    return ChatConversation(
      id: data?.id ?? 0,
      name: data?.name ?? '',
      isGroup: data?.isGroup ?? false,
      createdAt: data?.createdAt,
      updatedAt: data?.updatedAt,
      participants: data?.participants ?? const [],
      participantDetails: data?.participantDetails?.map(
            (key, value) => MapEntry(key, _participantMapper.mapToEntity(value)),
          ) ??
          const {},
      lastMessage: data?.lastMessage ?? '',
      lastMessageType: data?.lastMessageType ?? '',
      isLastMessageRevoked: data?.isLastMessageRevoked ?? false,
      lastMessageTimestamp: data?.lastMessageTimestamp,
      lastMessageSenderId: data?.lastMessageSenderId ?? 0,
      unreadCount: data?.unreadCount ?? 0,
    );
  }

  @override
  ChatConversationData mapToData(ChatConversation entity) {
    return ChatConversationData(
      id: entity.id,
      name: entity.name,
      isGroup: entity.isGroup,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      participants: entity.participants,
      participantDetails: entity.participantDetails.map(
        (key, value) => MapEntry(key, _participantMapper.mapToData(value)),
      ),
      lastMessage: entity.lastMessage,
      lastMessageType: entity.lastMessageType,
      isLastMessageRevoked: entity.isLastMessageRevoked,
      lastMessageTimestamp: entity.lastMessageTimestamp,
      lastMessageSenderId: entity.lastMessageSenderId,
      unreadCount: entity.unreadCount,
    );
  }
}
