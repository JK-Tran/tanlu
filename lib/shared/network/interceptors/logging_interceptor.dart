import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:tanlu_management/core/utils/app_logger.dart';

/// Custom log interceptor cho Dio – style rõ ràng, dễ đọc.
class LoggingInterceptor extends Interceptor {
  LoggingInterceptor({
    this.logFullToken = false,
    this.enableLogRequestInfo = true,
    this.enableLogSuccessResponse = true,
    this.enableLogErrorResponse = true,
  });

  /// true = log full Authorization (chỉ bật khi debug, tránh lộ token).
  final bool logFullToken;

  final bool enableLogRequestInfo;
  final bool enableLogSuccessResponse;
  final bool enableLogErrorResponse;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (!enableLogRequestInfo) {
      handler.next(options);
      return;
    }

    try {
      final log = <String>[];
      log.add('\x1B[33m************ Request ************');
      log.add('🌐 ${options.method} ${options.uri}');

      if (options.headers.isNotEmpty) {
        final headersToLog = Map<String, dynamic>.from(options.headers);
        headersToLog.remove('Authorization');

        if (headersToLog.isNotEmpty) {
          log.add('🌐 Headers:');
          log.add('🌐 ${_prettyResponse(headersToLog)}');
        }
      }

      if (options.queryParameters.isNotEmpty) {
        log.add('🌐 Query: ${_prettyResponse(options.queryParameters)}');
      }

      if (options.data != null) {
        log.add('🌐 Body:');
        if (options.data is FormData) {
          final data = options.data as FormData;
          if (data.fields.isNotEmpty) {
            log.add('🌐 Fields: ${_prettyResponse(data.fields)}');
          }
          if (data.files.isNotEmpty) {
            log.add(
              '🌐 Files: ${_prettyResponse(data.files.map((e) => MapEntry(e.key, 'File name: ${e.value.filename}, Content type: ${e.value.contentType}, Length: ${e.value.length}')))}',
            );
          }
        } else {
          log.add('🌐 ${_prettyResponse(options.data)}');
        }
      }

      final auth = options.headers['Authorization']?.toString();
      if (auth != null && auth.isNotEmpty) {
        log.add(
          '🌐 Authorization: ${logFullToken && kDebugMode ? auth : _maskToken(auth)}',
        );
      }

      appLogger.i(log.join('\n'));
    } catch (e) {
      appLogger.i('🌐 ${options.method} ${options.uri}');
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (!enableLogSuccessResponse) {
      handler.next(response);
      return;
    }

    try {
      final log = <String>[];
      log.add('\x1B[32m************ Request Response ************');
      log.add(
        '🎉 ${response.requestOptions.method} ${response.requestOptions.uri}',
      );
      log.add(
        '🎉 Request Body: ${_prettyResponse(response.requestOptions.data)}',
      );
      log.add('🎉 Status Code: ${response.statusCode}');
      log.add('🎉 Body: ${_prettyResponse(response.data)}');

      appLogger.i(log.join('\n'));
    } catch (e) {
      appLogger.w(
        '📥 RESPONSE ${response.statusCode} ${response.requestOptions.uri} (log body failed: $e)',
      );
    }

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (!enableLogErrorResponse) {
      handler.next(err);
      return;
    }

    try {
      final log = <String>[];
      log.add('\x1B[31m************ Request Error ************');
      log.add('⛔️ ${err.requestOptions.method} ${err.requestOptions.uri}');
      log.add(
        '⛔️ Status Code: ${err.response?.statusCode ?? 'unknown status code'}',
      );
      log.add('⛔️ Message: ${err.message}');
      if (err.response?.data != null) {
        log.add('⛔️ Body: ${_prettyResponse(err.response!.data)}');
      }

      appLogger.e(log.join('\n'));
    } catch (e) {
      appLogger.e('⛔️ ${err.requestOptions.uri} ${err.message}');
    }

    handler.next(err);
  }

  // ignore: avoid-dynamic
  String _prettyResponse(dynamic data) {
    if (data is Map) {
      return AppLogger.prettyJson(data as Map<String, dynamic>);
    }
    return data.toString();
  }

  static String _maskToken(String auth) {
    if (auth.length <= 20) return '***';
    return '${auth.substring(0, 14)}...${auth.substring(auth.length - 6)}';
  }
}
