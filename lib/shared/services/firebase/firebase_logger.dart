import 'dart:convert';

import 'package:tanlu_management/core/utils/app_logger.dart';

/// Logger cho Firebase Firestore – cùng phong cách với [LoggingInterceptor].
///
/// Dùng:
/// ```dart
/// final doc = await FirebaseLogger.get('users', uid, () =>
///     FirebaseFirestore.instance.collection('users').doc(uid).get());
///
/// final list = await FirebaseLogger.list('students', () =>
///     FirebaseFirestore.instance.collection('students').get());
///
/// await FirebaseLogger.set('users/$uid', data, () =>
///     FirebaseFirestore.instance.collection('users').doc(uid).set(data));
/// ```
class FirebaseLogger {
  FirebaseLogger._();

  // ─── READ: get single document ─────────────────────────────────────────────

  /// Gọi Firestore để lấy 1 document, sau đó log giống HTTP GET.
  static Future<T> get<T>(
    String path,
    Future<T> Function() call, {
    Map<String, dynamic>? Function(T result)? dataExtractor,
  }) async {
    _logRequest('GET', path);
    try {
      final result = await call();
      final data = dataExtractor?.call(result);
      _logResponse('GET', path, data);
      return result;
    } catch (e, st) {
      _logError('GET', path, e, st);
      rethrow;
    }
  }

  // ─── READ: list / query ─────────────────────────────────────────────────────

  /// Gọi Firestore để lấy danh sách documents, sau đó log giống HTTP GET list.
  static Future<T> list<T>(
    String path,
    Future<T> Function() call, {
    Map<String, dynamic>? requestMeta,
    List<Map<String, dynamic>>? Function(T result)? dataExtractor,
    Map<String, dynamic> Function(T result)? responseMetaBuilder,
  }) async {
    _logRequest('GET (list)', path, body: requestMeta);
    try {
      final result = await call();
      final data = dataExtractor?.call(result);
      final responseMeta = responseMetaBuilder?.call(result);
      _logResponseList('GET (list)', path, data, meta: responseMeta);
      return result;
    } catch (e, st) {
      _logError('GET (list)', path, e, st);
      rethrow;
    }
  }

  // ─── WRITE: set / add / update ──────────────────────────────────────────────

  /// Gọi Firestore để ghi document, log body trước khi ghi.
  static Future<T> write<T>(
    String method, // 'SET', 'ADD', 'UPDATE', 'DELETE'
    String path,
    Map<String, dynamic>? body,
    Future<T> Function() call,
  ) async {
    _logRequest(method, path, body: body);
    try {
      final result = await call();
      _logWriteResponse(method, path);
      return result;
    } catch (e, st) {
      _logError(method, path, e, st);
      rethrow;
    }
  }

  // ─── Internal helpers ───────────────────────────────────────────────────────

  static void _logRequest(
    String method,
    String path, {
    Map<String, dynamic>? body,
  }) {
    final log = <String>[];
    log.add('\x1B[33m************ Firebase Request ************');
    log.add('🔥 $method firestore://$path');
    if (body != null && body.isNotEmpty) {
      log.add('🔥 Body:');
      log.add('🔥 ${_pretty(body)}');
    }
    appLogger.i(log.join('\n'));
  }

  static void _logResponse(
    String method,
    String path,
    Map<String, dynamic>? data,
  ) {
    final log = <String>[];
    log.add('\x1B[32m************ Firebase Response ************');
    log.add('🎉 $method firestore://$path');
    if (data != null) {
      log.add('🎉 exists: true');
      log.add('🎉 Data: ${_pretty(data)}');
    } else {
      log.add('🎉 exists: false  (document không tồn tại)');
    }
    appLogger.i(log.join('\n'));
  }

  static void _logResponseList(
    String method,
    String path,
    List<Map<String, dynamic>>? docs, {
    Map<String, dynamic>? meta,
  }) {
    final log = <String>[];
    log.add('\x1B[32m************ Firebase Response ************');
    log.add('🎉 $method firestore://$path');
    if (meta != null && meta.isNotEmpty) {
      log.add('🎉 Pagination:');
      log.add('🎉 ${_pretty(meta)}');
    }
    log.add('🎉 Count: ${docs?.length ?? 0}');
    if (docs != null && docs.isNotEmpty) {
      log.add('🎉 Data: ${_pretty(docs)}');
    }
    appLogger.i(log.join('\n'));
  }

  static void _logWriteResponse(String method, String path) {
    final log = <String>[];
    log.add('\x1B[32m************ Firebase Response ************');
    log.add('🎉 $method firestore://$path → thành công');
    appLogger.i(log.join('\n'));
  }

  static void _logError(
    String method,
    String path,
    Object error,
    StackTrace st,
  ) {
    final log = <String>[];
    log.add('\x1B[31m************ Firebase Error ************');
    log.add('⛔ $method firestore://$path');
    log.add('⛔ Error: $error');
    appLogger.e(log.join('\n'), error, st);
  }

  static String _pretty(dynamic data) {
    try {
      if (data is Map || data is List) {
        return const JsonEncoder.withIndent('  ').convert(data);
      }
      return data.toString();
    } catch (_) {
      return data.toString();
    }
  }
}
