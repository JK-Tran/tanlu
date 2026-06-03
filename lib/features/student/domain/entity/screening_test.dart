import 'package:freezed_annotation/freezed_annotation.dart';

part 'screening_test.freezed.dart';

@freezed
class ScreeningTest with _$ScreeningTest {
  const factory ScreeningTest({
    @Default(0) int id,
    @Default('') String title,
  }) = _ScreeningTest;
}
