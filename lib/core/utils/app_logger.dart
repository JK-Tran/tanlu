import 'dart:convert';

import 'package:logger/logger.dart';

/// Logger dùng chung. Dùng [api] khi log liên quan API (request/response).
/// Pretty JSON khi data là Map/List hoặc string JSON.
final AppLogger appLogger = AppLogger._();

class AppLogger {
  AppLogger._();

  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 4,
      lineLength: 80,
      colors: true,
      printEmojis: true,
    ),
  );

  Logger get raw => _logger;

  void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.d(message, error: error, stackTrace: stackTrace);
  }

  void i(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.i(message, error: error, stackTrace: stackTrace);
  }

  void w(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.w(message, error: error, stackTrace: stackTrace);
  }

  void e(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  /// Log cho API: message + body (pretty JSON nếu có).
  void api(String message, {dynamic requestBody, dynamic responseBody}) {
    final buffer = StringBuffer(message);
    if (requestBody != null) {
      buffer.writeln();
      buffer.writeln('Request body:');
      buffer.writeln(prettyJson(requestBody));
    }
    if (responseBody != null) {
      buffer.writeln();
      buffer.writeln('Response body:');
      buffer.writeln(prettyJson(responseBody));
    }
    _logger.i(buffer.toString());
  }

  /// Chuyển object hoặc string JSON thành chuỗi pretty (indent 2 spaces).
  static String prettyJson(dynamic data) {
    if (data == null) return 'null';
    try {
      if (data is String) {
        final decoded = jsonDecode(data);
        return const JsonEncoder.withIndent('  ').convert(decoded);
      }
      if (data is Map || data is List) {
        return const JsonEncoder.withIndent('  ').convert(data);
      }
      return data.toString();
    } catch (_) {
      return data.toString();
    }
  }
}
