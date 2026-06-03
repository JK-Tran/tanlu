import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/programs/data/model/program_data.dart';
import 'package:tanlu_management/shared/network/api_client.dart';

@LazySingleton()
class ProgramApiService {
  final ApiClient _apiClient;

  ProgramApiService(this._apiClient);

  Future<ProgramsResponseData?> getPrograms() async {
    return _apiClient.request<ProgramsResponseData, ProgramsResponseData>(
      method: RestMethod.get,
      path: '/v1/programs',
      decoder: (data) => ProgramsResponseData.fromJson(data),
    );
  }

  Future<ProgramResponseData?> getProgramById(int id) async {
    return _apiClient.request<ProgramResponseData, ProgramResponseData>(
      method: RestMethod.get,
      path: '/v1/programs/$id',
      decoder: (data) => ProgramResponseData.fromJson(data),
    );
  }
}
