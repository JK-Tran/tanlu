import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/student/domain/entity/screening_test.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';

part 'screening_result.freezed.dart';

@freezed
class ScreeningResult with _$ScreeningResult {
  const factory ScreeningResult({
    @Default(0) int id,
    @Default(0) int screeningTestId,
    @Default(0) int studentId,
    @Default(0) int createdBy,
    @Default(0) int totalScore,
    @Default('') String riskLevel,
    @Default('') String recommendation,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(ScreeningTest()) ScreeningTest screeningTest,
    @Default(User()) User creator,
  }) = _ScreeningResult;
}
