import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/student/domain/entity/student_parent.dart';
import 'package:tanlu_management/features/student/domain/entity/student_teacher.dart';
import 'package:tanlu_management/features/student/domain/entity/screening_result.dart';
import 'package:tanlu_management/features/student/domain/entity/development_result.dart';

part 'student.freezed.dart';

@freezed
class Student with _$Student {
  const factory Student({
    @Default(0) int id,
    @Default(0) int classId,
    @Default('') String fullName,
    @Default('') String nickname,
    @Default('') String gender,
    DateTime? dateOfBirth,
    @Default('') String avatarFileId,
    @Default('') String studentCode,
    DateTime? enrollmentDate,
    @Default('') String status,
    @Default('') String initialReason,
    @Default('') String diagnosisSummary,
    @Default(0) int developmentAgeMonth,
    @Default('') String supportLevel,
    @Default('') String note,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(Classroom()) Classroom classroom,
    @Default([]) List<StudentParent> studentParents,
    @Default([]) List<StudentTeacher> studentTeachers,
    @Default([]) List<ScreeningResult> screeningResults,
    @Default([]) List<DevelopmentResult> developmentResults,
  }) = _Student;
}

@freezed
class Classroom with _$Classroom {
  const factory Classroom({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String code,
    @Default(Center()) Center center,
  }) = _Classroom;
}
