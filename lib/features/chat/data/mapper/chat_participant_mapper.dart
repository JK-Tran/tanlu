import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/chat_participant_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_participant.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class ChatParticipantMapper extends BaseDataMapper<ChatParticipantData, ChatParticipant> with DataMapperMixin<ChatParticipantData, ChatParticipant> {
  @override
  ChatParticipant mapToEntity(ChatParticipantData? data) {
    return ChatParticipant(
      id: data?.id ?? 0,
      name: data?.name ?? '',
      avatarUrl: data?.avatarUrl ?? '',
      role: data?.role ?? '',
    );
  }

  @override
  ChatParticipantData mapToData(ChatParticipant entity) {
    return ChatParticipantData(
      id: entity.id,
      name: entity.name,
      avatarUrl: entity.avatarUrl,
      role: entity.role,
    );
  }
}
