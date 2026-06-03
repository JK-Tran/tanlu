import 'package:freezed_annotation/freezed_annotation.dart';

part 'development_assessment_data.freezed.dart';
part 'development_assessment_data.g.dart';

@freezed
class DevelopmentAssessmentData with _$DevelopmentAssessmentData {
  const factory DevelopmentAssessmentData({
    @JsonKey() int? id,
    @JsonKey() String? title,
  }) = _DevelopmentAssessmentData;

  const DevelopmentAssessmentData._();

  factory DevelopmentAssessmentData.fromJson(Map<String, dynamic> json) =>
      _$DevelopmentAssessmentDataFromJson(json);
}
