import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/report/data/mapper/report_data_mapper.dart';
import 'package:tanlu_management/features/report/data/sources/report_api_service.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/features/report/domain/repositories/report_repository.dart';

@LazySingleton(as: ReportRepository)
class ReportRepositoryImpl extends ReportRepository {
  ReportRepositoryImpl(this._apiService, this._reportDataMapper);

  final ReportApiService _apiService;
  final ReportDataMapper _reportDataMapper;

  @override
  Future<List<Report>> getReports({String? reportMonth}) async {
    final response = await _apiService.getReports(reportMonth: reportMonth);
    return _reportDataMapper.mapToListEntity(response?.reports);
  }

  @override
  Future<Report> createReport({
    required int studentId,
    required String reportMonth,
    required String title,
    required String teacherComment,
    List<String>? files,
  }) async {
    final response = await _apiService.createReport(
      studentId: studentId,
      reportMonth: reportMonth,
      title: title,
      teacherComment: teacherComment,
      files: files,
    );
    return _reportDataMapper.mapToEntity(response);
  }

  @override
  Future<Report> updateReport({
    required int id,
    String? title,
    String? teacherComment,
    ReportStatus? status,
    List<String>? files,
  }) async {
    final response = await _apiService.updateReport(
      id: id,
      title: title,
      teacherComment: teacherComment,
      status: status?.name,
      files: files,
    );
    return _reportDataMapper.mapToEntity(response);
  }

  @override
  Future<String?> uploadFile(String filePath) async {
    final response = await _apiService.uploadFile(filePath: filePath);
    return response?.fileUrl;
  }

  @override
  Future<Report> getReportById({required int id}) async {
    final response = await _apiService.getReportById(id);
    return _reportDataMapper.mapToEntity(response);
  }

  @override
  Future<void> deleteReportFile({
    required int reportId,
    required int fileId,
  }) async {
    await _apiService.deleteReportFile(reportId: reportId, fileId: fileId);
  }

  @override
  Future<void> deleteReport({required int id}) async {
    await _apiService.deleteReport(id: id);
  }
}
