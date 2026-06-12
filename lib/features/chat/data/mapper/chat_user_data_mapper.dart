import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/chat_user_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_user.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@Injectable()
class ChatUserDataMapper extends BaseDataMapper<ChatUserData, ChatUser>
    with DataMapperMixin<ChatUserData, ChatUser> {
  @override
  ChatUser mapToEntity(ChatUserData? data) {
    return ChatUser(
      id: data?.id ?? 0,
      fullName: data?.fullName ?? '',
      avatarFileId: data?.avatarFileId,
    );
  }

  @override
  ChatUserData mapToData(ChatUser entity) {
    return ChatUserData(
      id: entity.id,
      fullName: entity.fullName,
      avatarFileId: entity.avatarFileId,
    );
  }
}
