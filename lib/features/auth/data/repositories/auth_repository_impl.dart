import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/data/mapper/user_data_mapper.dart';
import 'package:tanlu_management/features/auth/data/model/user_data.dart';
import 'package:tanlu_management/features/auth/data/sources/auth_firebase_source.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/auth/domain/repositories/auth_repository.dart';
import 'package:tanlu_management/shared/model/typedef.dart';
import 'package:tanlu_management/shared/services/local_storage/app_preferences.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AppPreferences _appPreferences;
  final UserDataMapper _userDataMapper;
  final AuthFirebaseSource _firebaseSource;

  AuthRepositoryImpl(
    this._appPreferences,
    this._userDataMapper,
    this._firebaseSource,
  );

  @override
  Future<User> loginWithEmail(String email, String password) async {
    final token = await _firebaseSource.signInWithEmailAndPassword(
      email,
      password,
    );

    await saveAccessToken(token);

    final uid = _firebaseSource.currentFirebaseUser!.uid;
    final userData = await _firebaseSource.getUserById(uid);

    final user = _userDataMapper.mapToEntity(userData);
    await saveCurrentUser(user);
    return user;
  }

  @override
  User getCurrentUser() {
    if (_appPreferences.currentUser != null) {
      final userData = UserData.fromJson(
        json.decode(_appPreferences.currentUser!) as JSON,
      );
      return _userDataMapper.mapToEntity(userData);
    }
    return _userDataMapper.mapToEntity(null);
  }

  @override
  Future<User?> fetchLatestCurrentUser() async {
    final uid = _firebaseSource.currentFirebaseUser?.uid;

    final userData = await _firebaseSource.getUserById(uid!);

    final user = _userDataMapper.mapToEntity(userData);
    await saveCurrentUser(user);
    return user;
  }

  @override
  Future<void> saveAccessToken(String? accessToken) async {
    await _appPreferences.saveAccessToken(accessToken!);
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
    await _firebaseSource.signOut();
    await clearCurrentUserData();
  }
}
