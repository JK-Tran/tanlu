import 'package:freezed_annotation/freezed_annotation.dart';

part 'development_assessment.freezed.dart';

@freezed
class DevelopmentAssessment with _$DevelopmentAssessment {
  const factory DevelopmentAssessment({
    @Default(0) int id,
    @Default('') String title,
  }) = _DevelopmentAssessment;
}
