import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/data/mapper/user_data_mapper.dart';
import 'package:tanlu_management/features/auth/data/model/user_data.dart';
import 'package:tanlu_management/features/auth/data/sources/auth_api_service.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/auth/domain/repositories/auth_repository.dart';
import 'package:tanlu_management/shared/services/local_storage/app_preferences.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthApiService _apiService;
  final AppPreferences _appPreferences;
  final UserDataMapper _userDataMapper;

  AuthRepositoryImpl(
    this._apiService,
    this._appPreferences,
    this._userDataMapper,
  );

  @override
  Future<void> login({
    required String username,
    required String password,
  }) async {
    final response = await _apiService.login(
      username: username,
      password: password,
    );

    await saveAccessToken(response?.token);
  }

  @override
  User getCurrentUser() {
    if (_appPreferences.currentUser != null) {
      final UserData userData = UserData.fromJson(
        json.decode(_appPreferences.currentUser!) as Map<String, dynamic>,
      );
      return _userDataMapper.mapToEntity(userData);
    }
    return _userDataMapper.mapToEntity(null);
  }

  @override
  Future<User> getMe() async {
    final response = await _apiService.getMe();
    final user = _userDataMapper.mapToEntity(response);
    await saveCurrentUser(user);
    return user;
  }

  @override
  Future<void> saveAccessToken(String? accessToken) async {
    if (accessToken != null && accessToken.isNotEmpty) {
      await _appPreferences.saveAccessToken(accessToken);
    }
  }

  @override
  Future<bool> saveCurrentUser(User user) {
    return _appPreferences.saveCurrentUser(
      json.encode(_userDataMapper.mapToData(user)),
    );
  }

  @override
  Future<void> clearCurrentUserData() async {
    await _appPreferences.clearCurrentUserData();
  }

  @override
  Future<void> logout() async {
    await _apiService.logout();
    await clearCurrentUserData();
  }
}
