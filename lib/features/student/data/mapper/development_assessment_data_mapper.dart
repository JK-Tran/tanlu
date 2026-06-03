import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/features/student/data/model/development_assessment_data.dart';
import 'package:tanlu_management/features/student/domain/entity/development_assessment.dart';

@Injectable()
class DevelopmentAssessmentDataMapper extends BaseDataMapper<DevelopmentAssessmentData, DevelopmentAssessment>
    with DataMapperMixin<DevelopmentAssessmentData, DevelopmentAssessment> {
  @override
  DevelopmentAssessment mapToEntity(DevelopmentAssessmentData? data) {
    return DevelopmentAssessment(
      id: data?.id ?? 0,
      title: data?.title ?? '',
    );
  }

  @override
  DevelopmentAssessmentData mapToData(DevelopmentAssessment entity) {
    return DevelopmentAssessmentData(
      id: entity.id,
      title: entity.title,
    );
  }
}
