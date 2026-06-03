import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/report/domain/entity/file.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

part 'report.freezed.dart';

enum ReportStatus {
  draft,
  approved,
  sent;

  static ReportStatus fromString(String? value) {
    return switch (value) {
      'approved' => ReportStatus.approved,
      'sent' => ReportStatus.sent,
      _ => ReportStatus.draft,
    };
  }

  String get label => switch (this) {
    ReportStatus.draft => 'Nháp',
    ReportStatus.approved => 'Đã duyệt',
    ReportStatus.sent => 'Đã gửi',
  };
}

@freezed
class Report with _$Report {
  const factory Report({
    @Default(0) int id,
    @Default(0) int studentId,
    @Default('') String reportMonth,
    @Default(0) int createdBy,
    @Default(0) int approvedBy,
    @Default('') String title,
    @Default('') String teacherComment,
    @Default(ReportStatus.draft) ReportStatus status,
    DateTime? sentAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    Student? student,
    Creator? creator,
    @Default(0) int approver,
    @Default([]) List<File> files,
  }) = _Report;
}

@freezed
class Creator with _$Creator {
  const factory Creator({
    @Default(0) int id,
    @Default('') String fullName,
    @Default('') String email,
  }) = _Creator;
}
