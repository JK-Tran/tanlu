/// Khi 401 + refresh token thất bại, AuthInterceptor gọi [trigger].
/// App gắn callback trong [buildRouter] để điều hướng về login (đã clear isLoggedIn trong _clearAuth).
abstract final class SessionExpiredHelper {
  static void Function()? _navigateToLogin;

  /// Gắn callback (gọi từ nơi có GoRouter, thường trong buildRouter).
  static set navigateToLogin(void Function()? callback) {
    _navigateToLogin = callback;
  }

  /// AuthInterceptor gọi khi session hết hạn (đã clear auth, cần về login).
  static void trigger() {
    _navigateToLogin?.call();
  }
}
