import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:tanlu_management/core/constants/api_endpoints.dart';
import 'package:tanlu_management/core/constants/app_constants.dart';
import 'package:tanlu_management/shared/network/interceptors/auth_interceptor.dart';
import 'package:tanlu_management/shared/network/interceptors/error_interceptor.dart';
import 'package:tanlu_management/shared/network/interceptors/logging_interceptor.dart';
import 'package:tanlu_management/core/utils/shared_prefs_helper.dart';

/// Dio instance dùng chung. Đăng ký trong DI.
class DioClient {
  DioClient(SharedPrefsHelper prefs, {void Function()? onSessionExpired}) {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.baseApi,
        connectTimeout: AppConstants.connectTimeout,
        receiveTimeout: AppConstants.apiTimeout,
        sendTimeout: AppConstants.apiTimeout,
        // Chỉ coi 2xx là thành công. 401, 4xx, 5xx sẽ đi vào onError
        // để AuthInterceptor/ErrorInterceptor xử lý (refresh token, map AppException, ...).
        validateStatus: (status) =>
            status != null && status >= 200 && status < 300,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );
    // AuthInterceptor phải chạy TRƯỚC ErrorInterceptor khi có 401 (response: thứ tự ngược).
    // Thêm cuối = chạy đầu tiên khi response/error → bắt 401, refresh, retry.
    _dio.interceptors.addAll([
      ErrorInterceptor(),
      AuthInterceptor(_dio, prefs, onSessionExpired: onSessionExpired),
      LoggingInterceptor(logFullToken: kDebugMode),
    ]);
  }

  late final Dio _dio;
  Dio get dio => _dio;
}
