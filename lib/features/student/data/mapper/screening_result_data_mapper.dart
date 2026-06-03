import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/features/student/data/mapper/screening_test_data_mapper.dart';
import 'package:tanlu_management/features/auth/data/mapper/user_data_mapper.dart';
import 'package:tanlu_management/features/student/data/model/screening_result_data.dart';
import 'package:tanlu_management/features/student/domain/entity/screening_result.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class ScreeningResultDataMapper
    extends BaseDataMapper<ScreeningResultData, ScreeningResult>
    with DataMapperMixin<ScreeningResultData, ScreeningResult> {
  ScreeningResultDataMapper(this._testMapper, this._userMapper);

  final ScreeningTestDataMapper _testMapper;
  final UserDataMapper _userMapper;

  @override
  ScreeningResult mapToEntity(ScreeningResultData? data) {
    return ScreeningResult(
      id: data?.id ?? 0,
      screeningTestId: data?.screeningTestId ?? 0,
      studentId: data?.studentId ?? 0,
      createdBy: data?.createdBy ?? 0,
      totalScore: data?.totalScore ?? 0,
      riskLevel: data?.riskLevel ?? '',
      recommendation: data?.recommendation ?? '',
      createdAt: DateTimeUtils.parseDateTime(data?.createdAt),
      updatedAt: DateTimeUtils.parseDateTime(data?.updatedAt),
      screeningTest: _testMapper.mapToEntity(data?.screeningTest),
      creator: _userMapper.mapToEntity(data?.creator),
    );
  }

  @override
  ScreeningResultData mapToData(ScreeningResult entity) {
    return ScreeningResultData(
      id: entity.id,
      screeningTestId: entity.screeningTestId,
      studentId: entity.studentId,
      createdBy: entity.createdBy,
      totalScore: entity.totalScore,
      riskLevel: entity.riskLevel,
      recommendation: entity.recommendation,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
      screeningTest: _testMapper.mapToData(entity.screeningTest),
      creator: _userMapper.mapToData(entity.creator),
    );
  }
}
