import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/features/student/data/model/screening_test_data.dart';
import 'package:tanlu_management/features/student/domain/entity/screening_test.dart';

@Injectable()
class ScreeningTestDataMapper extends BaseDataMapper<ScreeningTestData, ScreeningTest>
    with DataMapperMixin<ScreeningTestData, ScreeningTest> {
  @override
  ScreeningTest mapToEntity(ScreeningTestData? data) {
    return ScreeningTest(
      id: data?.id ?? 0,
      title: data?.title ?? '',
    );
  }

  @override
  ScreeningTestData mapToData(ScreeningTest entity) {
    return ScreeningTestData(
      id: entity.id,
      title: entity.title,
    );
  }
}
