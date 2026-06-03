import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/student/data/model/teacher_data.dart';

part 'student_teacher_data.freezed.dart';
part 'student_teacher_data.g.dart';

@freezed
class StudentTeacherData with _$StudentTeacherData {
  const factory StudentTeacherData({
    @JsonKey() int? id,
    @JsonKey() int? studentId,
    @JsonKey() int? teacherId,
    @JsonKey() bool? isPrimaryTeacher,
    @JsonKey() String? startDate,
    @JsonKey() String? endDate,
    @JsonKey() String? status,
    @JsonKey() String? createdAt,
    @JsonKey() TeacherData? teacher,
  }) = _StudentTeacherData;

  const StudentTeacherData._();

  factory StudentTeacherData.fromJson(Map<String, dynamic> json) =>
      _$StudentTeacherDataFromJson(json);
}
