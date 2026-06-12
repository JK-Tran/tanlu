import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/mapper/message_data_mapper.dart';
import 'package:tanlu_management/features/chat/data/mapper/participant_data_mapper.dart';
import 'package:tanlu_management/features/chat/data/model/conversation_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class ConversationDataMapper extends BaseDataMapper<ConversationData, Conversation>
    with DataMapperMixin<ConversationData, Conversation> {
  ConversationDataMapper(this._participantDataMapper, this._messageDataMapper);

  final ParticipantDataMapper _participantDataMapper;
  final MessageDataMapper _messageDataMapper;

  @override
  Conversation mapToEntity(ConversationData? data) {
    return Conversation(
      id: data?.id ?? 0,
      name: data?.name ?? '',
      type: data?.type ?? '',
      updatedAt: DateTimeUtils.parseDateTime(data?.updatedAt),
      participants: _participantDataMapper.mapToListEntity(data?.participants),
      messages: _messageDataMapper.mapToListEntity(data?.messages),
    );
  }

  @override
  ConversationData mapToData(Conversation entity) {
    return ConversationData(
      id: entity.id,
      name: entity.name,
      type: entity.type,
      updatedAt: entity.updatedAt?.toIso8601String(),
      participants: _participantDataMapper.mapToListData(entity.participants),
      messages: _messageDataMapper.mapToListData(entity.messages),
    );
  }
}
