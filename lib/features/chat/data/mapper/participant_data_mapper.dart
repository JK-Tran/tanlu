import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/mapper/chat_user_data_mapper.dart';
import 'package:tanlu_management/features/chat/data/model/participant_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/participant.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@Injectable()
class ParticipantDataMapper extends BaseDataMapper<ParticipantData, Participant>
    with DataMapperMixin<ParticipantData, Participant> {
  ParticipantDataMapper(this._chatUserDataMapper);

  final ChatUserDataMapper _chatUserDataMapper;

  @override
  Participant mapToEntity(ParticipantData? data) {
    return Participant(
      userId: data?.userId ?? 0,
      role: data?.role ?? '',
      user: data?.user != null ? _chatUserDataMapper.mapToEntity(data?.user) : null,
    );
  }

  @override
  ParticipantData mapToData(Participant entity) {
    return ParticipantData(
      userId: entity.userId,
      role: entity.role,
      user: _chatUserDataMapper.mapToNullableData(entity.user),
    );
  }
}
