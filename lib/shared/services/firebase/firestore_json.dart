import 'package:cloud_firestore/cloud_firestore.dart';

/// Chuẩn Firestore ↔ data model cho toàn app.
///
/// - **Ngày** (`date`, `dob`): `String` `yyyy-MM-dd` trên Firestore.
/// - **Thời điểm** (`*At`, `*Time`): `Timestamp` UTC trên Firestore.
/// - **Ghi**: [writeTimestamp] → `FieldValue.serverTimestamp()` (UTC do server điền).
/// - **Đọc / UI**: [toDateTime] → `DateTime` local của thiết bị.
abstract final class FirestoreJson {
  /// Ghi thời điểm lên Firestore — UTC, server điền khi commit.
  static FieldValue writeTimestamp() => FieldValue.serverTimestamp();

  /// Đọc thời điểm từ Firestore → giờ local thiết bị (hiển thị UI).
  static DateTime? toDateTime(dynamic value) {
    if (value == null) return null;
    if (value is DateTime) return value.isUtc ? value.toLocal() : value;
    if (value is Timestamp) return value.toDate();
    if (value is String && value.isNotEmpty) {
      final parsed = DateTime.tryParse(value);
      if (parsed == null) return null;
      return parsed.isUtc ? parsed.toLocal() : parsed;
    }
    return null;
  }

  /// Ghi [DateTime] có sẵn lên Firestore (hiếm khi dùng — ưu tiên [writeTimestamp]).
  static Object? dateTimeToFirestore(DateTime? value) {
    if (value == null) return null;
    return Timestamp.fromDate(value);
  }

  /// Chuẩn hóa payload Firestore để log (pretty JSON, dễ đọc).
  static dynamic forLog(dynamic value, [String? fieldKey]) {
    if (value == null) return null;
    if (value is FieldValue) return _fieldValueForLog(fieldKey);
    if (value is Timestamp) {
      return {
        '_type': 'timestamp',
        'utc': value.toDate().toUtc().toIso8601String(),
        'local': value.toDate().toIso8601String(),
      };
    }
    if (value is DateTime) return value.toIso8601String();
    if (value is Map) {
      return value.map(
        (key, nested) => MapEntry(
          key.toString(),
          forLog(nested, key.toString()),
        ),
      );
    }
    if (value is Iterable && value is! String) {
      return value.map((item) => forLog(item)).toList();
    }
    return value;
  }

  static String _fieldValueForLog(String? fieldKey) {
    if (fieldKey == 'unreadCount') return '<increment>';
    if (fieldKey == 'classId' || fieldKey == 'fcmToken') {
      return '<delete>';
    }
    if (fieldKey != null &&
        (fieldKey.endsWith('At') ||
            fieldKey.endsWith('Time') ||
            fieldKey == 'updatedAt')) {
      return '<serverTimestamp>';
    }
    return '<fieldTransform>';
  }

  /// Đọc ngày (không giờ): String | Timestamp → `yyyy-MM-dd`.
  static String? toDateString(dynamic value) {
    if (value == null) return null;
    if (value is String) return value;
    if (value is Timestamp) return _formatDateOnly(value.toDate());
    if (value is DateTime) {
      final local = value.isUtc ? value.toLocal() : value;
      return _formatDateOnly(local);
    }
    return value.toString();
  }

  /// Ghi ngày lên Firestore.
  static String? dateOnlyToFirestore(DateTime? value) {
    if (value == null) return null;
    return _formatDateOnly(value);
  }

  static String _formatDateOnly(DateTime value) {
    final y = value.year;
    final m = value.month.toString().padLeft(2, '0');
    final d = value.day.toString().padLeft(2, '0');
    return '$y-$m-$d';
  }
}

extension FirestoreQueryDocumentJson
    on QueryDocumentSnapshot<Map<String, dynamic>> {
  Map<String, dynamic> get toModelJson => {'id': id, ...data()};
}

extension FirestoreDocumentJson on DocumentSnapshot<Map<String, dynamic>> {
  Map<String, dynamic>? get toModelJson {
    final data = this.data();
    if (data == null) return null;
    return {'id': id, ...data};
  }
}
