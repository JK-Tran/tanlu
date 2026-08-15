import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/chat_contact_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_contact.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class ChatContactMapper extends BaseDataMapper<ChatContactData, ChatContact>
    with DataMapperMixin<ChatContactData, ChatContact> {
  @override
  ChatContact mapToEntity(ChatContactData? data) {
    return ChatContact(
      id: data?.id ?? 0,
      fullName: data?.fullName ?? '',
      avatarUrl: data?.avatarUrl,
      role: data?.role ?? '',
      phone: data?.phone,
      childrenText: data?.childrenText ?? '',
    );
  }

  @override
  ChatContactData mapToData(ChatContact entity) {
    return ChatContactData(
      id: entity.id,
      fullName: entity.fullName,
      avatarUrl: entity.avatarUrl,
      role: entity.role,
      phone: entity.phone,
      childrenText: entity.childrenText,
    );
  }
}
