import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/auth/data/model/user_data.dart';
import 'package:tanlu_management/features/student/data/model/student_parent_data.dart';
import 'package:tanlu_management/features/student/data/model/student_teacher_data.dart';
import 'package:tanlu_management/features/student/data/model/screening_result_data.dart';
import 'package:tanlu_management/features/student/data/model/development_result_data.dart';

part 'student_data.freezed.dart';
part 'student_data.g.dart';

@freezed
class StudentData with _$StudentData {
  const factory StudentData({
    @JsonKey() int? id,
    @JsonKey() int? classId,
    @JsonKey() String? fullName,
    @JsonKey() String? nickname,
    @JsonKey() String? gender,
    @JsonKey() String? dateOfBirth,
    @JsonKey() String? avatarFileId,
    @JsonKey() String? studentCode,
    @JsonKey() String? enrollmentDate,
    @JsonKey() String? status,
    @JsonKey() String? initialReason,
    @JsonKey() String? diagnosisSummary,
    @JsonKey() int? developmentAgeMonth,
    @JsonKey() String? supportLevel,
    @JsonKey() String? note,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() ClassroomData? classroom,
    @JsonKey() List<StudentParentData>? studentParents,
    @JsonKey() List<StudentTeacherData>? studentTeachers,
    @JsonKey() List<ScreeningResultData>? screeningResults,
    @JsonKey() List<DevelopmentResultData>? developmentResults,
  }) = _StudentData;

  const StudentData._();

  factory StudentData.fromJson(Map<String, dynamic> json) =>
      _$StudentDataFromJson(json);
}

@freezed
class ClassroomData with _$ClassroomData {
  const factory ClassroomData({
    @Default(0) int? id,
    @Default('') String? name,
    @Default('') String? code,
    @Default(CenterData()) CenterData center,
  }) = _ClassroomData;

  const ClassroomData._();

  factory ClassroomData.fromJson(Map<String, dynamic> json) =>
      _$ClassroomDataFromJson(json);
}

@freezed
class StudentsResponseData with _$StudentsResponseData {
  const factory StudentsResponseData({
    @JsonKey(name: 'students') required List<StudentData> students,
  }) = _StudentsResponseData;

  factory StudentsResponseData.fromJson(Map<String, dynamic> json) =>
      _$StudentsResponseDataFromJson(json);
}

@freezed
class StudentResponseData with _$StudentResponseData {
  const factory StudentResponseData({
    @JsonKey(name: 'student') required StudentData student,
  }) = _StudentResponseData;

  factory StudentResponseData.fromJson(Map<String, dynamic> json) =>
      _$StudentResponseDataFromJson(json);
}
