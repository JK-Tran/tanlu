part of 'report_bloc.dart';

abstract class ReportEvent {
  const ReportEvent();
}

@freezed
class ReportStarted extends ReportEvent with _$ReportStarted {
  const factory ReportStarted() = _ReportStarted;
}

@freezed
class FetchReportData extends ReportEvent with _$FetchReportData {
  const factory FetchReportData() = _FetchReportData;
}

@freezed
class RefreshReportData extends ReportEvent with _$RefreshReportData {
  const factory RefreshReportData() = _RefreshReportData;
}

@freezed
class SelectReportMonth extends ReportEvent with _$SelectReportMonth {
  const factory SelectReportMonth(String month) = _SelectReportMonth;
}

@freezed
class CreateReport extends ReportEvent with _$CreateReport {
  const factory CreateReport({
    required int studentId,
    required String reportMonth,
    required String title,
    required String teacherComment,
    List<String>? files,
  }) = _CreateReport;
}

@freezed
class GetReportById extends ReportEvent with _$GetReportById {
  const factory GetReportById({required int id}) = _GetReportById;
}

@freezed
class UpdateReport extends ReportEvent with _$UpdateReport {
  const factory UpdateReport({
    required int id,
    String? title,
    String? teacherComment,
    ReportStatus? status,
    List<String>? files,
  }) = _UpdateReport;
}

@freezed
class DeleteReportFile extends ReportEvent with _$DeleteReportFile {
  const factory DeleteReportFile({required int reportId, required int fileId}) =
      _DeleteReportFile;
}

@freezed
class DeleteReport extends ReportEvent with _$DeleteReport {
  const factory DeleteReport({required int id}) = _DeleteReport;
}
