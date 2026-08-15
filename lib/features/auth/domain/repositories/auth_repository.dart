import 'package:tanlu_management/features/auth/domain/entity/user.dart';

abstract class AuthRepository {
  Future<bool> get isLoggedIn;

  Future<void> loginWithEmail(String email, String password);

  Future<User> getMe();

  Future<void> logout();

  User getCurrentUser();

  Future<void> clearCurrentUserData();

  Future<bool> saveCurrentUser(User user);

  Future<void> saveAccessToken(String? accessToken);

  Future<void> saveRefreshToken(String? refreshToken);

  Future<String> refreshToken();

  Future<void> updateFcmToken(String token);

  Future<void> changePassword(String oldPassword, String newPassword);
}
