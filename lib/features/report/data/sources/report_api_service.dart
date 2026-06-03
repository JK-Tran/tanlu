import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/report/data/model/file_data.dart';
import 'package:tanlu_management/features/report/data/model/report_data.dart';
import 'package:tanlu_management/shared/network/api_client.dart';

@LazySingleton()
class ReportApiService {
  final ApiClient _apiClient;

  ReportApiService(this._apiClient);

  Future<FileData?> uploadFile({
    required String filePath,
    String folder = 'reports',
  }) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(filePath),
      'folder': folder,
    });

    return _apiClient.request<FileData, FileData>(
      method: RestMethod.post,
      path: '/v1/upload',
      body: formData,
      decoder: (data) => FileData.fromJson(data),
    );
  }

  Future<ReportsResponseData?> getReports({String? reportMonth}) async {
    return _apiClient.request<ReportsResponseData, ReportsResponseData>(
      method: RestMethod.get,
      path: '/v1/reports?reportMonth=$reportMonth',
      decoder: (data) => ReportsResponseData.fromJson(data),
    );
  }

  Future<ReportData?> createReport({
    required int studentId,
    required String reportMonth,
    required String title,
    required String teacherComment,
    List<String>? files,
  }) async {
    final map = <String, dynamic>{
      'studentId': studentId.toString(),
      'reportMonth': reportMonth,
      'title': title,
      'teacherComment': teacherComment,
    };

    if (files != null && files.isNotEmpty) {
      map['files'] = await Future.wait(
        files.map((path) => MultipartFile.fromFile(path)).toList(),
      );
    }

    final formData = FormData.fromMap(map);

    return _apiClient.request<ReportData, ReportData>(
      method: RestMethod.post,
      path: '/v1/reports',
      body: formData,
      decoder: (data) => ReportData.fromJson(data['report']),
    );
  }

  Future<ReportData?> updateReport({
    required int id,
    String? title,
    String? teacherComment,
    String? status,
    List<String>? files,
  }) async {
    final map = <String, dynamic>{
      'title': ?title,
      'teacherComment': ?teacherComment,
      'status': ?status,
    };

    if (files != null && files.isNotEmpty) {
      map['files'] = await Future.wait(
        files.map((path) => MultipartFile.fromFile(path)).toList(),
      );
    }

    final formData = FormData.fromMap(map);

    return _apiClient.request<ReportData, ReportData>(
      method: RestMethod.put,
      path: '/v1/reports/$id',
      body: formData,
      decoder: (data) => ReportData.fromJson(data['report']),
    );
  }

  Future<ReportData?> getReportById(int id) async {
    return _apiClient.request<ReportData, ReportData>(
      method: RestMethod.get,
      path: '/v1/reports/$id',
      decoder: (data) => ReportData.fromJson(data),
    );
  }

  Future<void> deleteReportFile({
    required int reportId,
    required int fileId,
  }) async {
    await _apiClient.request<Object, Object>(
      method: RestMethod.delete,
      path: '/v1/reports/$reportId/files/$fileId',
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
  }

  Future<void> deleteReport({required int id}) async {
    await _apiClient.request<Object, Object>(
      method: RestMethod.delete,
      path: '/v1/reports/$id',
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
  }
}
