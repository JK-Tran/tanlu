import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/student/data/model/parent_data.dart';

part 'student_parent_data.freezed.dart';
part 'student_parent_data.g.dart';

@freezed
class StudentParentData with _$StudentParentData {
  const factory StudentParentData({
    @JsonKey() int? id,
    @JsonKey() int? studentId,
    @JsonKey() int? parentId,
    @JsonKey() String? relationship,
    @JsonKey() bool? isPrimaryContact,
    @JsonKey() String? createdAt,
    @JsonKey() ParentData? parent,
  }) = _StudentParentData;

  const StudentParentData._();

  factory StudentParentData.fromJson(Map<String, dynamic> json) =>
      _$StudentParentDataFromJson(json);
}
