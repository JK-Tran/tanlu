import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/constants/api_endpoints.dart';
import 'package:tanlu_management/features/auth/data/model/user_data.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/client/auth_app_server_api_client.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/client/base/rest_api_client.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/client/none_auth_app_server_api_client.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/mapper/base_success_response_mapper.dart';
import 'package:tanlu_management/shared/model/typedef.dart';

@LazySingleton()
class AuthApiService {
  AuthApiService(
    this._noneAuthAppServerApiClient,
    this._authAppServerApiClient,
  );

  final NoneAuthAppServerApiClient _noneAuthAppServerApiClient;
  final AuthAppServerApiClient _authAppServerApiClient;

  Future<UserDataResponse?> loginWithEmail(
    String email,
    String password,
  ) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: ApiEndpoints.login,
      body: {'email': email, 'password': password},
      decoder: (json) => UserDataResponse.fromJson(json as JSON),
    );
  }

  Future<UserDataResponse?> refreshToken(String refreshToken) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/auth/refresh',
      body: {'refreshToken': refreshToken},
      decoder: (json) => UserDataResponse.fromJson(json as JSON),
    );
  }

  Future<UserData?> getMe() async {
    return _authAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/auth/me',
      decoder: (json) => UserData.fromJson(json as JSON),
    );
  }

  Future<void> logOut() async {
    await _authAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.plain,
      path: '/auth/logout',
    );
  }

  Future<void> updateFcmToken(String fcmToken) async {
    await _authAppServerApiClient.request(
      method: RestMethod.put,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/auth/me/fcm-token',
      body: {'fcmToken': fcmToken},
    );
  }

  Future<void> changePassword(String oldPassword, String newPassword) async {
    await _authAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/auth/change-password',
      body: {
        'oldPassword': oldPassword,
        'newPassword': newPassword,
      },
    );
  }
}
