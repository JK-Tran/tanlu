import 'package:tanlu_management/features/auth/domain/entity/user.dart';

abstract class AuthRepository {
  Future<void> login({required String username, required String password});
  Future<User> getMe();
  User getCurrentUser();

  Future<void> clearCurrentUserData();

  Future<bool> saveCurrentUser(User user);

  Future<void> saveAccessToken(String? accessToken);

  Future<void> logout();
}
