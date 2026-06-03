import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

import '../../domain/entity/user.dart';
import '../model/user_data.dart';

@Injectable()
class CenterDataMapper extends BaseDataMapper<CenterData, Center>
    with DataMapperMixin<CenterData, Center> {
  CenterDataMapper();

  @override
  Center mapToEntity(CenterData? data) {
    return Center(id: data?.id ?? 0, name: data?.name ?? '');
  }

  @override
  CenterData mapToData(Center entity) {
    return CenterData(id: entity.id, name: entity.name);
  }
}
