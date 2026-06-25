import 'package:freezed_annotation/freezed_annotation.dart';
import 'contact.dart';

part 'student.freezed.dart';

@freezed
class Student with _$Student {
  const factory Student({
    @Default('') String id,
    @Default('') String classId,
    @Default('') String fullName,
    @Default('') String nickname,
    @Default('') String gender,
    DateTime? dob,
    DateTime? dateOfBirth,
    @Default('') String avatarUrl,
    @Default('') String studentCode,
    @Default('') String status,
    @Default('') String parentUserId,
    @Default('') String address,
    @Default([]) List<Contact> contacts,

    // Y tế & Thể chất
    @Default('') String birthHistory,
    @Default('') String diagnosis,
    @Default('') String allergies,
    @Default('') String currentMedications,
    @Default('') String bloodType,

    // Hành vi & Sở thích
    @Default('') String likes,
    @Default('') String dislikesOrTriggers,
    @Default('') String selfCareSkills,

    // Cũ / Tương thích ngược
    @Default('') String initialReason,
    @Default('') String diagnosisSummary,
    @Default(0) int developmentAgeMonth,
    @Default('') String supportLevel,
  }) = _Student;
}
