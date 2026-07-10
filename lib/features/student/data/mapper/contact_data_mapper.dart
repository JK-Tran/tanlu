import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/data/model/contact_data.dart';
import 'package:tanlu_management/features/student/domain/entity/contact.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class ContactDataMapper extends BaseDataMapper<ContactData, Contact>
    with DataMapperMixin<ContactData, Contact> {
  @override
  Contact mapToEntity(ContactData? data) {
    return Contact(
      name: data?.name ?? '',
      relationship: data?.relationship ?? '',
      phone: data?.phone ?? '',
      dob: DateTimeUtils.parseDateTimeDateOnlyType2(data?.dob ?? ''),
    );
  }

  @override
  ContactData mapToData(Contact entity) {
    return ContactData(
      name: entity.name,
      relationship: entity.relationship,
      phone: entity.phone,
      dob: entity.dob?.toIso8601String(),
    );
  }
}
