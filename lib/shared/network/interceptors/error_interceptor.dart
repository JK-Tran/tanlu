import 'package:dio/dio.dart';
import 'package:tanlu_management/shared/network/exceptions/app_exceptions.dart';

/// Chuyển DioException thành [AppException].
/// Không truyền lỗi kỹ thuật từ server – dùng message generic.
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final appException = _mapToAppException(err);
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: appException,
        response: err.response,
      ),
    );
  }

  AppException _mapToAppException(DioException err) {
    if (err.error is AppException) return err.error as AppException;
    final code = err.response?.statusCode;
    final rawMessage = err.response?.data is Map
        ? (err.response!.data as Map)['message']?.toString()
        : null;
    final message = _safeMessage(rawMessage, code);

    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return NetworkException(message);
      case DioExceptionType.badResponse:
        if (code == 401) {
          return UnauthorizedException(message, code);
        }
        if (code != null && code >= 500) {
          return ServerException(message, code);
        }
        return ServerException(message, code);
      default:
        return UnknownException(message);
    }
  }

  /// Chỉ dùng message từ server nếu thân thiện; còn lại dùng generic.
  String _safeMessage(String? raw, int? code) {
    if (raw == null || raw.isEmpty) return _genericMessage(code);
    if (_isTechnical(raw)) return _genericMessage(code);
    if (raw.length > 120) return _genericMessage(code);
    return raw;
  }

  bool _isTechnical(String msg) {
    final lower = msg.toLowerCase();
    return lower.contains('exception') ||
        lower.contains('error') ||
        lower.contains('null') ||
        lower.contains('undefined') ||
        lower.contains('stack') ||
        lower.contains('trace') ||
        lower.contains('database') ||
        lower.contains('connection') ||
        lower.contains('timeout') ||
        lower.contains('socket');
  }

  String _genericMessage(int? code) {
    if (code == 401) return 'Unauthorized';
    if (code != null && code >= 500) return 'Server error';
    return 'Request failed';
  }
}
