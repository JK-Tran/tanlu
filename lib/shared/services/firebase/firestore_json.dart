import 'package:cloud_firestore/cloud_firestore.dart';

/// Chuẩn Firestore ↔ data model cho toàn app.
///
/// - **Ngày** (`date`, `dob`): `String` `yyyy-MM-dd` trên Firestore.
/// - **Thời điểm** (`*At`, `*Time`): `Timestamp` trên Firestore, `DateTime?` trong model.
abstract final class FirestoreJson {
  /// Đọc thời điểm: Timestamp | ISO String | DateTime → DateTime?
  static DateTime? toDateTime(dynamic value) {
    if (value == null) return null;
    if (value is DateTime) return value;
    if (value is Timestamp) return value.toDate();
    if (value is String && value.isNotEmpty) return DateTime.tryParse(value);
    return null;
  }

  /// Ghi thời điểm lên Firestore.
  static Object? dateTimeToFirestore(DateTime? value) {
    if (value == null) return null;
    return Timestamp.fromDate(value);
  }

  /// Đọc ngày (không giờ): String | Timestamp → `yyyy-MM-dd`.
  static String? toDateString(dynamic value) {
    if (value == null) return null;
    if (value is String) return value;
    if (value is Timestamp) return _formatDateOnly(value.toDate());
    if (value is DateTime) return _formatDateOnly(value);
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
