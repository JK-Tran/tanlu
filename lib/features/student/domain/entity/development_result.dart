import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/student/domain/entity/development_assessment.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';

part 'development_result.freezed.dart';

@freezed
class DevelopmentResult with _$DevelopmentResult {
  const factory DevelopmentResult({
    @Default(0) int id,
    @Default(0) int developmentAssessmentId,
    @Default(0) int studentId,
    @Default(0) int createdBy,
    @Default(0) int estimatedDevelopmentAgeMonth,
    @Default('') String strengths,
    @Default('') String weaknesses,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(DevelopmentAssessment()) DevelopmentAssessment developmentAssessment,
    @Default(User()) User creator,
  }) = _DevelopmentResult;
}
