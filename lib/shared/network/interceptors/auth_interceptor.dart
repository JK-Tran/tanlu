import 'package:dio/dio.dart';
import 'package:tanlu_management/core/constants/api_endpoints.dart';
import 'package:tanlu_management/core/constants/storage_keys.dart';
import 'package:tanlu_management/core/utils/app_logger.dart';
import 'package:tanlu_management/shared/network/exceptions/app_exceptions.dart';
import 'package:tanlu_management/core/utils/shared_prefs_helper.dart';

/// Gắn token vào header, xử lý 401: refresh token rồi retry.
/// Không gọi refresh song song – dùng lock.
class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor(this._dio, this._prefs, {void Function()? onSessionExpired})
    : _onSessionExpired = onSessionExpired;

  final Dio _dio;
  final SharedPrefsHelper _prefs;
  final void Function()? _onSessionExpired;

  static const _skipAuthKey = 'skip_auth';

  /// Đánh dấu request là refresh – không thêm Authorization.
  static RequestOptions skipAuth(RequestOptions options) {
    options.extra[_skipAuthKey] = true;
    return options;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.extra[_skipAuthKey] == true) {
      handler.next(options);
      return;
    }
    if (_isRefreshPath(options.path)) {
      handler.next(options);
      return;
    }
    final token = _prefs.getString(StorageKeys.authToken);
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode != 401) {
      handler.next(err);
      return;
    }
    if (_isRefreshPath(err.requestOptions.path)) {
      appLogger.w('Auth: 401 on refresh-token → clear auth, session expired');
      _clearAuth().then((_) => _onSessionExpired?.call());
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: const UnauthorizedException('Session expired'),
        ),
      );
      return;
    }
    appLogger.w(
      'Auth: 401 ${err.requestOptions.uri} → refresh token rồi retry',
    );
    _handle401(err, handler);
  }

  Future<void> _handle401(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    _refreshFuture ??= _doRefresh();
    try {
      final newToken = await _refreshFuture!;
      final opts = err.requestOptions.copyWith(
        headers: {
          ...err.requestOptions.headers,
          'Authorization': 'Bearer $newToken',
        },
      );
      appLogger.i('Auth: refresh xong, retry ${opts.uri}');
      final response = await _dio.fetch(opts);
      handler.resolve(response);
    } catch (e, st) {
      appLogger.e('Auth: refresh thất bại', e, st);
      await _clearAuth();
      _onSessionExpired?.call();
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: const UnauthorizedException('Session expired'),
        ),
      );
    } finally {
      _refreshFuture = null;
    }
  }

  Future<String>? _refreshFuture;

  /// Refresh token, trả về access token mới. Throw khi lỗi.
  Future<String> _doRefresh() async {
    final refreshToken = _prefs.getString(StorageKeys.refreshToken);
    if (refreshToken == null || refreshToken.isEmpty) {
      appLogger.w('Auth: không có refresh_token');
      throw Exception('No refresh token');
    }
    appLogger.i('Auth: đang gọi POST ${ApiEndpoints.refreshToken}');
    final response = await _dio.post<Map<String, dynamic>>(
      ApiEndpoints.refreshToken,
      data: {'refresh_token': refreshToken},
      options: Options(extra: {_skipAuthKey: true}),
    );
    final data =
        response.data?['data'] as Map<String, dynamic>? ?? response.data;
    if (data == null) throw Exception('Invalid refresh response');
    final accessToken =
        data['access_token']?.toString() ?? data['token']?.toString();
    if (accessToken == null || accessToken.isEmpty) {
      throw Exception('No access token');
    }
    await _prefs.setString(StorageKeys.authToken, accessToken);
    final newRefresh = data['refresh_token']?.toString();
    if (newRefresh != null && newRefresh.isNotEmpty) {
      await _prefs.setString(StorageKeys.refreshToken, newRefresh);
    }
    appLogger.i('Auth: refresh thành công');
    return accessToken;
  }

  Future<void> _clearAuth() async {
    await _prefs.remove(StorageKeys.authToken);
    await _prefs.remove(StorageKeys.refreshToken);
    await _prefs.remove(StorageKeys.userId);
    await _prefs.remove(StorageKeys.userData);
    await _prefs.setBool(StorageKeys.isLoggedIn, false);
  }

  bool _isRefreshPath(String path) =>
      path.contains('refresh-token') || path.contains('refresh_token');
}
