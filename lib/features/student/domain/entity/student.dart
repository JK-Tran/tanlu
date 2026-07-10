import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/student/domain/entity/class_info.dart';
import 'package:tanlu_management/features/student/domain/entity/contact.dart';
import 'package:tanlu_management/features/student/domain/entity/parent.dart';

part 'student.freezed.dart';

@freezed
class Student with _$Student {
  const factory Student({
    @Default(0) int id,
    @Default(0) int centerId,
    @Default(0) int classId,
    @Default(0) int parentId,
    @Default('') String studentCode,
    @Default('') String fullName,
    @Default('') String nickName,
    @Default('') String gender,
    DateTime? birthDate,
    @Default('') String avatarUrl,
    @Default('') String status,
    @Default('') String birthHistory,
    @Default('') String diagnosis,
    @Default('') String allergies,
    @Default('') String currentMedications,
    @Default('') String bloodType,
    @Default('') String likes,
    @Default('') String dislikesOrTriggers,
    @Default('') String selfCareSkills,
    @Default('') String initialReason,
    @Default('') String diagnosisSummary,
    @Default(0) int developmentAgeMonth,
    @Default('') String supportLevel,
    DateTime? createdAt,
    @Default(ClassInfo()) ClassInfo classInfo,
    @Default(Parent()) Parent parent,
    @Default([]) List<Contact> contacts,
  }) = _Student;
}
