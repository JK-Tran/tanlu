import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/report/data/model/file_data.dart';
import 'package:tanlu_management/features/student/data/model/student_data.dart';

part 'report_data.freezed.dart';
part 'report_data.g.dart';

@freezed
class ReportData with _$ReportData {
  const factory ReportData({
    @JsonKey() int? id,
    @JsonKey() int? studentId,
    @JsonKey() String? reportMonth,
    @JsonKey() int? createdBy,
    @JsonKey() int? approvedBy,
    @JsonKey() String? title,
    @JsonKey() String? teacherComment,
    @JsonKey() String? status,
    @JsonKey() String? sentAt,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() StudentData? student,
    @JsonKey() CreatorData? creator,
    @JsonKey() int? approver,
    @JsonKey() List<FileData>? files,
  }) = _ReportData;

  const ReportData._();

  factory ReportData.fromJson(Map<String, dynamic> json) =>
      _$ReportDataFromJson(json);
}

@freezed
class CreatorData with _$CreatorData {
  const factory CreatorData({
    @JsonKey() int? id,
    @JsonKey() String? fullName,
    @JsonKey() String? email,
  }) = _CreatorData;

  const CreatorData._();

  factory CreatorData.fromJson(Map<String, dynamic> json) =>
      _$CreatorDataFromJson(json);
}

@freezed
class ReportsResponseData with _$ReportsResponseData {
  const factory ReportsResponseData({
    @JsonKey(name: 'reports') required List<ReportData> reports,
  }) = _ReportsResponseData;

  factory ReportsResponseData.fromJson(Map<String, dynamic> json) =>
      _$ReportsResponseDataFromJson(json);
}
