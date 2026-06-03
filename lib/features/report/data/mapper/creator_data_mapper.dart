import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/report/data/model/report_data.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@Injectable()
class CreatorDataMapper extends BaseDataMapper<CreatorData, Creator>
    with DataMapperMixin<CreatorData, Creator> {
  CreatorDataMapper();

  @override
  Creator mapToEntity(CreatorData? data) {
    return Creator(
      id: data?.id ?? 0,
      fullName: data?.fullName ?? '',
      email: data?.email ?? '',
    );
  }

  @override
  CreatorData mapToData(Creator entity) {
    return CreatorData(
      id: entity.id,
      fullName: entity.fullName,
      email: entity.email,
    );
  }
}
