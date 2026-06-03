import 'package:freezed_annotation/freezed_annotation.dart';

part 'screening_test_data.freezed.dart';
part 'screening_test_data.g.dart';

@freezed
class ScreeningTestData with _$ScreeningTestData {
  const factory ScreeningTestData({
    @JsonKey() int? id,
    @JsonKey() String? title,
  }) = _ScreeningTestData;

  const ScreeningTestData._();

  factory ScreeningTestData.fromJson(Map<String, dynamic> json) =>
      _$ScreeningTestDataFromJson(json);
}
