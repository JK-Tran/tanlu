import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/auth/data/model/user_data.dart';

part 'teacher_data.freezed.dart';
part 'teacher_data.g.dart';

@freezed
class TeacherData with _$TeacherData {
  const factory TeacherData({
    @JsonKey() int? id,
    @JsonKey() int? classId,
    @JsonKey() String? specialty,
    @JsonKey() String? qualification,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() UserData? user,
  }) = _TeacherData;

  const TeacherData._();

  factory TeacherData.fromJson(Map<String, dynamic> json) =>
      _$TeacherDataFromJson(json);
}
