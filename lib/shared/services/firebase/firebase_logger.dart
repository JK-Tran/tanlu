import 'package:tanlu_management/core/utils/app_logger.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

/// Logger cho Firebase Firestore – cùng phong cách với [LoggingInterceptor].
///
/// Mỗi request log rõ **Input** (pretty JSON). Response log **Output** (pretty JSON).
class FirebaseLogger {
  FirebaseLogger._();

  // ─── READ: get single document ─────────────────────────────────────────────

  static Future<T> get<T>(
    String path,
    Future<T> Function() call, {
    Map<String, dynamic>? input,
    Map<String, dynamic>? Function(T result)? dataExtractor,
  }) async {
    _logRequest('GET', path, input: _resolveInput(path, input));
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

  static Future<T> list<T>(
    String path,
    Future<T> Function() call, {
    Map<String, dynamic>? input,
    Map<String, dynamic>? requestMeta,
    List<Map<String, dynamic>>? Function(T result)? dataExtractor,
    Map<String, dynamic> Function(T result)? responseMetaBuilder,
  }) async {
    final resolvedInput = _resolveInput(
      path,
      input ?? requestMeta,
    );
    _logRequest('GET (list)', path, input: resolvedInput);
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

  static Future<T> write<T>(
    String method,
    String path,
    Map<String, dynamic>? body,
    Future<T> Function() call, {
    Map<String, dynamic>? input,
  }) async {
    final resolvedInput = input ?? body;
    _logRequest(method, path, input: resolvedInput);
    try {
      final result = await call();
      _logWriteResponse(method, path, input: resolvedInput);
      return result;
    } catch (e, st) {
      _logError(method, path, e, st);
      rethrow;
    }
  }

  // ─── Internal helpers ───────────────────────────────────────────────────────

  static Map<String, dynamic>? _resolveInput(
    String path,
    Map<String, dynamic>? input,
  ) {
    if (input != null && input.isNotEmpty) return input;
    return _inputFromPath(path);
  }

  static Map<String, dynamic>? _inputFromPath(String path) {
    final queryIndex = path.indexOf('?');
    if (queryIndex >= 0) {
      return _parseQueryString(path.substring(queryIndex + 1));
    }

    final segments = path.split('/').where((s) => s.isNotEmpty).toList();
    if (segments.length >= 2) {
      return {'documentId': segments.last};
    }
    return null;
  }

  static Map<String, dynamic>? _parseQueryString(String query) {
    final map = <String, dynamic>{};
    for (final part in query.split('&')) {
      if (part.trim().isEmpty) continue;
      final eq = part.indexOf('=');
      if (eq > 0) {
        final key = Uri.decodeComponent(part.substring(0, eq).trim());
        final value = Uri.decodeComponent(part.substring(eq + 1).trim());
        map[key] = value;
      } else {
        map[part.trim()] = true;
      }
    }
    return map.isEmpty ? null : map;
  }

  static void _logRequest(
    String method,
    String path, {
    Map<String, dynamic>? input,
  }) {
    final log = <String>[];
    log.add('\x1B[33m************ Firebase Request ************');
    log.add('🔥 $method firestore://$path');
    if (input != null && input.isNotEmpty) {
      log.add('🔥 Input:');
      log.add('🔥 ${_pretty(input)}');
    } else {
      log.add('🔥 Input: (none)');
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
      log.add('🎉 Output:');
      log.add('🎉 ${_pretty(data)}');
    } else {
      log.add('🎉 exists: false');
      log.add('🎉 Output: null');
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
      log.add('🎉 Meta:');
      log.add('🎉 ${_pretty(meta)}');
    }
    log.add('🎉 count: ${docs?.length ?? 0}');
    if (docs != null && docs.isNotEmpty) {
      log.add('🎉 Output:');
      log.add('🎉 ${_pretty(docs)}');
    } else {
      log.add('🎉 Output: []');
    }
    appLogger.i(log.join('\n'));
  }

  static void _logWriteResponse(
    String method,
    String path, {
    Map<String, dynamic>? input,
  }) {
    final log = <String>[];
    log.add('\x1B[32m************ Firebase Response ************');
    log.add('🎉 $method firestore://$path → success');
    if (input != null && input.isNotEmpty) {
      log.add('🎉 Written:');
      log.add('🎉 ${_pretty(input)}');
    }
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
    return AppLogger.prettyJson(FirestoreJson.forLog(data));
  }
}
