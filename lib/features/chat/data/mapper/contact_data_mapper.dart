import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/contact_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@injectable
class ContactDataMapper extends BaseDataMapper<ContactData, Contact>
    with DataMapperMixin<ContactData, Contact> {
  Contact mapToEntityWithContext(
    ContactData? data, {
    ContactRelation relation = ContactRelation.none,
    bool canChat = false,
    String? pendingRequest,
  }) {
    return Contact(
      id: data?.id ?? '',
      fullName: data?.fullName ?? '',
      role: data?.role ?? '',
      avatar: data?.avatar ?? '',
      relation: relation,
      canChat: canChat,
      pendingRequest: pendingRequest,
    );
  }

  @override
  Contact mapToEntity(ContactData? data) {
    return mapToEntityWithContext(data);
  }

  @override
  ContactData mapToData(Contact entity) {
    return ContactData(
      id: entity.id.isEmpty ? null : entity.id,
      fullName: entity.fullName,
      role: entity.role,
      avatar: entity.avatar.isEmpty ? null : entity.avatar,
    );
  }
}
