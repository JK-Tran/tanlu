import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/features/student/data/mapper/development_assessment_data_mapper.dart';
import 'package:tanlu_management/features/auth/data/mapper/user_data_mapper.dart';
import 'package:tanlu_management/features/student/data/model/development_result_data.dart';
import 'package:tanlu_management/features/student/domain/entity/development_result.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class DevelopmentResultDataMapper
    extends BaseDataMapper<DevelopmentResultData, DevelopmentResult>
    with DataMapperMixin<DevelopmentResultData, DevelopmentResult> {
  DevelopmentResultDataMapper(this._assessmentMapper, this._userMapper);

  final DevelopmentAssessmentDataMapper _assessmentMapper;
  final UserDataMapper _userMapper;

  @override
  DevelopmentResult mapToEntity(DevelopmentResultData? data) {
    return DevelopmentResult(
      id: data?.id ?? 0,
      developmentAssessmentId: data?.developmentAssessmentId ?? 0,
      studentId: data?.studentId ?? 0,
      createdBy: data?.createdBy ?? 0,
      estimatedDevelopmentAgeMonth: data?.estimatedDevelopmentAgeMonth ?? 0,
      strengths: data?.strengths ?? '',
      weaknesses: data?.weaknesses ?? '',
      createdAt: DateTimeUtils.parseDateTime(data?.createdAt),
      updatedAt: DateTimeUtils.parseDateTime(data?.updatedAt),
      developmentAssessment: _assessmentMapper.mapToEntity(
        data?.developmentAssessment,
      ),
      creator: _userMapper.mapToEntity(data?.creator),
    );
  }

  @override
  DevelopmentResultData mapToData(DevelopmentResult entity) {
    return DevelopmentResultData(
      id: entity.id,
      developmentAssessmentId: entity.developmentAssessmentId,
      studentId: entity.studentId,
      createdBy: entity.createdBy,
      estimatedDevelopmentAgeMonth: entity.estimatedDevelopmentAgeMonth,
      strengths: entity.strengths,
      weaknesses: entity.weaknesses,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
      developmentAssessment: _assessmentMapper.mapToData(entity.developmentAssessment),
      creator: _userMapper.mapToData(entity.creator),
    );
  }
}
