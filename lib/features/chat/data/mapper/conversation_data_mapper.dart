import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/conversation_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@injectable
class ConversationDataMapper
    extends BaseDataMapper<ConversationData, Conversation>
    with DataMapperMixin<ConversationData, Conversation> {
  Conversation mapToEntityWithContext(
    ConversationData? data, {
    int unreadCount = 0,
  }) {
    return Conversation(
      id: data?.id ?? '',
      name: data?.name ?? '',
      type: data?.type ?? 'direct',
      classId: data?.classId,
      centerId: data?.centerId,
      memberIds: data?.memberIds ?? const [],
      lastMessageText: data?.lastMessageText ?? '',
      lastMessageSenderId: data?.lastMessageSenderId ?? '',
      lastMessageAt: data?.lastMessageAt,
      updatedAt: data?.updatedAt ?? data?.lastMessageAt,
      unreadCount: unreadCount,
    );
  }

  @override
  Conversation mapToEntity(ConversationData? data) {
    return mapToEntityWithContext(data);
  }

  @override
  ConversationData mapToData(Conversation entity) {
    return ConversationData(
      id: entity.id.isEmpty ? null : entity.id,
      name: entity.name,
      type: entity.type,
      classId: entity.classId,
      centerId: entity.centerId,
      memberIds: entity.memberIds,
      lastMessageText: entity.lastMessageText,
      lastMessageSenderId: entity.lastMessageSenderId,
      lastMessageAt: entity.lastMessageAt,
      updatedAt: entity.updatedAt,
    );
  }
}
