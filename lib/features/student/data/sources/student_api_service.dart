import 'package:injectable/injectable.dart';

import 'package:tanlu_management/features/student/data/model/student_data.dart';

import 'package:tanlu_management/shared/network/api_client.dart';

@LazySingleton()
class StudentApiService {
  final ApiClient _apiClient;

  StudentApiService(this._apiClient);

  Future<StudentsResponseData?> getStudents() async {
    return _apiClient.request(
      method: RestMethod.get,
      path: '/v1/students',
      decoder: (data) => StudentsResponseData.fromJson(data),
    );
  }

  Future<StudentResponseData?> getStudentById(int id) async {
    return _apiClient.request(
      method: RestMethod.get,
      path: '/v1/students/$id',
      decoder: (data) => StudentResponseData.fromJson(data),
    );
  }

  Future<StudentResponseData?> updateStudent(
      int id, Map<String, dynamic> data) async {
    return _apiClient.request(
      method: RestMethod.put,
      path: '/v1/students/$id',
      body: data,
      decoder: (data) => StudentResponseData.fromJson(data),
    );
  }
}
