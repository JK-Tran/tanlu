import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/data/mapper/user_data_mapper.dart';
import 'package:tanlu_management/features/auth/data/model/user_data.dart';
import 'package:tanlu_management/features/auth/data/sources/auth_api_service.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/auth/domain/repositories/auth_repository.dart';
import 'package:tanlu_management/shared/exception/validation/validation_exception.dart';
import 'package:tanlu_management/shared/services/local_storage/app_preferences.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(
    this._appPreferences,
    this._userDataMapper,
    this._authApiService,
  );

  final AppPreferences _appPreferences;
  final UserDataMapper _userDataMapper;
  final AuthApiService _authApiService;

  @override
  Future<bool> get isLoggedIn async => _appPreferences.isLoggedIn;

  @override
  Future<User> loginWithEmail(String email, String password) async {
    final response = await _authApiService.loginWithEmail(email, password);
    final accessToken = response?.token;
    if (accessToken == null || accessToken.isEmpty) {
      throw ValidationException(ValidationExceptionKind.invalidInfomation);
    }

    await saveAccessToken(accessToken);

    final userData = response?.user;
    if (userData != null) {
      final user = _userDataMapper.mapToEntity(userData);
      await saveCurrentUser(user);
      return user;
    }

    throw ValidationException(ValidationExceptionKind.invalidInfomation);
  }

  @override
  Future<User> getMe() async {
    final response = await _authApiService.getMe();
    return _userDataMapper.mapToEntity(response);
  }

  @override
  User getCurrentUser() {
    if (_appPreferences.currentUser != null) {
      final userData = UserData.fromJson(
        json.decode(_appPreferences.currentUser!) as Map<String, dynamic>,
      );
      return _userDataMapper.mapToEntity(userData);
    }

    return _userDataMapper.mapToEntity(null);
  }

  @override
  Future<void> saveAccessToken(String? accessToken) async {
    return accessToken!.isNotEmpty
        ? _appPreferences.saveAccessToken(accessToken)
        : Future.value();
  }

  @override
  Future<bool> saveCurrentUser(User user) async {
    return _appPreferences.saveCurrentUser(
      json.encode(_userDataMapper.mapToData(user)),
    );
  }

  @override
  Future<void> clearCurrentUserData() => _appPreferences.clearCurrentUserData();

  @override
  Future<void> logout() async {
    await _authApiService.logOut();
    await updateFcmToken('');
    await clearCurrentUserData();
  }

  @override
  Future<void> updateFcmToken(String token) async {
    await _authApiService.updateFcmToken(token);
  }
}
