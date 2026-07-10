import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/student/data/model/class_info_data.dart';
import 'package:tanlu_management/features/student/data/model/contact_data.dart';
import 'package:tanlu_management/features/student/data/model/parent_data.dart';

part 'student_data.freezed.dart';
part 'student_data.g.dart';

@freezed
class StudentData with _$StudentData {
  const factory StudentData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'centerId') int? centerId,
    @JsonKey(name: 'classId') int? classId,
    @JsonKey(name: 'parentId') int? parentId,
    @JsonKey(name: 'studentCode') String? studentCode,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'nickName') String? nickName,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'birthDate') String? birthDate,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'birthHistory') String? birthHistory,
    @JsonKey(name: 'diagnosis') String? diagnosis,
    @JsonKey(name: 'allergies') String? allergies,
    @JsonKey(name: 'currentMedications') String? currentMedications,
    @JsonKey(name: 'bloodType') String? bloodType,
    @JsonKey(name: 'likes') String? likes,
    @JsonKey(name: 'dislikesOrTriggers') String? dislikesOrTriggers,
    @JsonKey(name: 'selfCareSkills') String? selfCareSkills,
    @JsonKey(name: 'initialReason') String? initialReason,
    @JsonKey(name: 'diagnosisSummary') String? diagnosisSummary,
    @JsonKey(name: 'developmentAgeMonth') int? developmentAgeMonth,
    @JsonKey(name: 'supportLevel') String? supportLevel,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'class') ClassInfoData? classInfo,
    @JsonKey(name: 'parent') ParentData? parent,
    @JsonKey(name: 'contacts') List<ContactData>? contacts,
  }) = _StudentData;

  const StudentData._();
  factory StudentData.fromJson(Map<String, dynamic> json) =>
      _$StudentDataFromJson(json);
}
