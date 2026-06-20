import 'package:freezed_annotation/freezed_annotation.dart';
import 'contact_data.dart';

part 'student_data.freezed.dart';
part 'student_data.g.dart';

@freezed
class StudentData with _$StudentData {
  const factory StudentData({
    @JsonKey(name: 'id', includeToJson: false) String? id, // ID thường được lấy từ Document ID
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'nickname') String? nickname,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'dob') String? dob,
    @JsonKey(name: 'dateOfBirth') String? dateOfBirth,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'studentCode') String? studentCode,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'parentUserId') String? parentUserId,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'contacts') List<ContactData>? contacts,
    
    // Y tế & Thể chất
    @JsonKey(name: 'birthHistory') String? birthHistory,
    @JsonKey(name: 'diagnosis') String? diagnosis,
    @JsonKey(name: 'allergies') String? allergies,
    @JsonKey(name: 'currentMedications') String? currentMedications,
    @JsonKey(name: 'bloodType') String? bloodType,

    // Hành vi & Sở thích
    @JsonKey(name: 'likes') String? likes,
    @JsonKey(name: 'dislikesOrTriggers') String? dislikesOrTriggers,
    @JsonKey(name: 'selfCareSkills') String? selfCareSkills,

    // Cũ / Tương thích ngược
    @JsonKey(name: 'initialReason') String? initialReason,
    @JsonKey(name: 'diagnosisSummary') String? diagnosisSummary,
    @JsonKey(name: 'developmentAgeMonth') int? developmentAgeMonth,
    @JsonKey(name: 'supportLevel') String? supportLevel,
  }) = _StudentData;

  factory StudentData.fromJson(Map<String, dynamic> json) => _$StudentDataFromJson(json);
}
