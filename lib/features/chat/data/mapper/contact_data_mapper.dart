import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/contact_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@Injectable()
class ContactDataMapper extends BaseDataMapper<ContactData, Contact>
    with DataMapperMixin<ContactData, Contact> {
  @override
  Contact mapToEntity(ContactData? data) {
    return Contact(
      id: data?.id ?? 0,
      fullName: data?.fullName ?? '',
      avatarFileId: data?.avatarFileId,
      roleCode: data?.role?.code ?? '',
    );
  }

  @override
  ContactData mapToData(Contact entity) {
    return ContactData(
      id: entity.id,
      fullName: entity.fullName,
      avatarFileId: entity.avatarFileId,
      role: RoleData(code: entity.roleCode),
    );
  }
}
