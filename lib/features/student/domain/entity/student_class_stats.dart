import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_class_stats.freezed.dart';

@freezed
class StudentClassStats with _$StudentClassStats {
  const factory StudentClassStats({
    @Default(0) int total,
    @Default(0) int male,
    @Default(0) int female,
  }) = _StudentClassStats;
}
