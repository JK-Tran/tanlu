import 'package:tanlu_management/core/config/app_env.dart';

/// Endpoint API. Base URL lấy theo flavor từ [AppEnv].
abstract final class ApiEndpoints {
  ApiEndpoints._();

  static String get baseApi => AppEnv.apiBaseUrl;

  // Auth
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String googleLogin = '/auth/google-login';
  static const String logout = '/auth/logout';
  static const String refreshToken = '/auth/refresh-token';
  static const String forgotPassword = '/auth/forgot-password';
  static const String profile = '/auth/profile';
  static const String setPassword = '/auth/set-password';

  // User
  static const String updateProfile = '/user/profile';

  // Home (greeting từ bảng loclens_greetings, lang từ FE)
  static const String homeGreeting = '/home/greeting';

  /// GET /api/categories (baseApi thường đã có /api)
  static const String homeCategories = '/categories';
}
