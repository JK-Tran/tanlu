/// Hàm tiện ích dùng chung.
abstract final class Helpers {
  Helpers._();

  static String capitalize(String s) {
    if (s.isEmpty) return s;
    return '${s[0].toUpperCase()}${s.substring(1).toLowerCase()}';
  }

  static String? nullIfEmpty(String? s) => s == null || s.isEmpty ? null : s;
}
