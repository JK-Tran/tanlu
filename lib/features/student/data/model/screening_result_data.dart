import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/student/data/model/screening_test_data.dart';
import 'package:tanlu_management/features/auth/data/model/user_data.dart';

part 'screening_result_data.freezed.dart';
part 'screening_result_data.g.dart';

@freezed
class ScreeningResultData with _$ScreeningResultData {
  const factory ScreeningResultData({
    @JsonKey() int? id,
    @JsonKey() int? screeningTestId,
    @JsonKey() int? studentId,
    @JsonKey() int? createdBy,
    @JsonKey() int? totalScore,
    @JsonKey() String? riskLevel,
    @JsonKey() String? recommendation,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() ScreeningTestData? screeningTest,
    @JsonKey() UserData? creator,
  }) = _ScreeningResultData;

  const ScreeningResultData._();

  factory ScreeningResultData.fromJson(Map<String, dynamic> json) =>
      _$ScreeningResultDataFromJson(json);
}
