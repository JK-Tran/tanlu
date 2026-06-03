import 'package:tanlu_management/features/report/domain/entity/report.dart';

abstract class ReportRepository {
  Future<List<Report>> getReports({String? reportMonth});

  Future<Report> createReport({
    required int studentId,
    required String reportMonth,
    required String title,
    required String teacherComment,
    List<String>? files,
  });

  Future<Report> updateReport({
    required int id,
    String? title,
    String? teacherComment,
    ReportStatus? status,
    List<String>? files,
  });

  Future<Report> getReportById({required int id});

  Future<String?> uploadFile(String filePath);

  Future<void> deleteReportFile({required int reportId, required int fileId});

  Future<void> deleteReport({required int id});
}
