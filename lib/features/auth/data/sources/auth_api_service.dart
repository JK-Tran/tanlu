import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/data/model/auth_response_data.dart';
import 'package:tanlu_management/features/auth/data/model/user_data.dart';
import 'package:tanlu_management/shared/model/typedef.dart';

import 'package:tanlu_management/shared/network/api_client.dart';

@LazySingleton()
class AuthApiService {
  final ApiClient _apiClient;

  AuthApiService(this._apiClient);

  Future<AuthResponseData?> login({
    required String username,
    required String password,
  }) async {
    return _apiClient.request<AuthResponseData, AuthResponseData>(
      method: RestMethod.post,
      path: '/v1/auth/login',
      body: {'email': username, 'password': password},
      decoder: (data) => AuthResponseData.fromJson(data),
    );
  }

  Future<UserData?> getMe() async {
    return _apiClient.request<UserData, UserData>(
      method: RestMethod.get,
      path: '/v1/auth/me',
      decoder: (data) => UserData.fromJson(data['user'] as JSON),
    );
  }

  Future<void> logout() async {
    await _apiClient.request(
      method: RestMethod.post,
      path: '/v1/auth/logout',
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
  }
}
