import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/student/data/model/development_assessment_data.dart';
import 'package:tanlu_management/features/auth/data/model/user_data.dart';

part 'development_result_data.freezed.dart';
part 'development_result_data.g.dart';

@freezed
class DevelopmentResultData with _$DevelopmentResultData {
  const factory DevelopmentResultData({
    @JsonKey() int? id,
    @JsonKey() int? developmentAssessmentId,
    @JsonKey() int? studentId,
    @JsonKey() int? createdBy,
    @JsonKey() int? estimatedDevelopmentAgeMonth,
    @JsonKey() String? strengths,
    @JsonKey() String? weaknesses,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() DevelopmentAssessmentData? developmentAssessment,
    @JsonKey() UserData? creator,
  }) = _DevelopmentResultData;

  const DevelopmentResultData._();

  factory DevelopmentResultData.fromJson(Map<String, dynamic> json) =>
      _$DevelopmentResultDataFromJson(json);
}
