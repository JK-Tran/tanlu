import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/data/model/student_data.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/client/auth_app_server_api_client.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/client/base/rest_api_client.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/mapper/base_success_response_mapper.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/model/data_response.dart';
import 'package:tanlu_management/shared/model/typedef.dart';

@LazySingleton()
class StudentApiService {
  StudentApiService(this._authAppServerApiClient);

  final AuthAppServerApiClient _authAppServerApiClient;

  Future<DataListResponse<StudentData>?> getStudents() async {
    return _authAppServerApiClient.request<StudentData, DataListResponse<StudentData>>(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.dataJsonArray,
      path: '/students',
      decoder: (json) => StudentData.fromJson(json as JSON),
    );
  }

  Future<StudentData?> getStudentById(int id) async {
    return _authAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/students/$id',
      decoder: (json) => StudentData.fromJson(json as JSON),
    );
  }
}
