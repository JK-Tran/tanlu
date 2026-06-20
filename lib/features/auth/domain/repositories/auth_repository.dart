import 'package:tanlu_management/features/auth/domain/entity/user.dart';

abstract class AuthRepository {
  Future<User> loginWithEmail(String email, String password);

  User getCurrentUser();

  Future<User?> fetchLatestCurrentUser();

  Future<void> clearCurrentUserData();

  Future<bool> saveCurrentUser(User user);

  Future<void> saveAccessToken(String? accessToken);

  Future<void> logout();
}
