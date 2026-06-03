import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/student/domain/entity/teacher.dart';

part 'student_teacher.freezed.dart';

@freezed
class StudentTeacher with _$StudentTeacher {
  const factory StudentTeacher({
    @Default(0) int id,
    @Default(0) int studentId,
    @Default(0) int teacherId,
    @Default(false) bool isPrimaryTeacher,
    DateTime? startDate,
    DateTime? endDate,
    @Default('') String status,
    DateTime? createdAt,
    @Default(Teacher()) Teacher teacher,
  }) = _StudentTeacher;
}
