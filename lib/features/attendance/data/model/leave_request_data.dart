import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/student/data/model/class_info_data.dart';
import 'package:tanlu_management/features/student/data/model/parent_data.dart';
import 'package:tanlu_management/features/student/data/model/student_data.dart';

part 'leave_request_data.freezed.dart';
part 'leave_request_data.g.dart';

@freezed
class LeaveRequestData with _$LeaveRequestData {
  const factory LeaveRequestData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'student') StudentData? student,
    @JsonKey(name: 'class') ClassInfoData? classInfo,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'parent') ParentData? parent,
    @JsonKey(name: 'submittedAt') String? submittedAt,
    @JsonKey(name: 'decidedAt') String? decidedAt,
    @JsonKey(name: 'decidedBy') int? decidedBy,
    @JsonKey(name: 'decisionNote') String? decisionNote,
  }) = _LeaveRequestData;

  const LeaveRequestData._();
  factory LeaveRequestData.fromJson(Map<String, dynamic> json) =>
      _$LeaveRequestDataFromJson(json);
}
