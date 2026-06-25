import 'package:intl/intl.dart';
import 'package:tanlu_management/shared/utils/string_utils.dart';

abstract final class ChatFormat {
  ChatFormat._();

  static String roleLabel(String role) {
    return switch (role) {
      'teacher' => 'Giáo viên',
      'parent' => 'Phụ huynh',
      _ => role,
    };
  }

  static String conversationTimeLabel(DateTime? dateTime) {
    if (dateTime == null) return '';
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final day = DateTime(dateTime.year, dateTime.month, dateTime.day);
    if (day == today) {
      return DateFormat('HH:mm').format(dateTime);
    }
    final yesterday = today.subtract(const Duration(days: 1));
    if (day == yesterday) return 'Hôm qua';
    if (now.difference(dateTime).inDays < 7) {
      return DateFormat('dd/MM').format(dateTime);
    }
    return DateFormat('dd/MM').format(dateTime);
  }

  static String messageTimeLabel(DateTime? dateTime) {
    if (dateTime == null) return '';
    return DateFormat('HH:mm').format(dateTime);
  }

  /// Calendar day key for grouping messages (`yyyy-MM-dd`, local time).
  static String dayKey(DateTime? dateTime) {
    if (dateTime == null) return '';
    return DateFormat('yyyy-MM-dd').format(
      DateTime(dateTime.year, dateTime.month, dateTime.day),
    );
  }

  /// Date label shown above messages of the same day.
  /// Uses a fixed format so labels never change when the clock passes midnight.
  static String? dateSeparatorLabel(DateTime? dateTime) {
    if (dateTime == null) return null;
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }

  static String timeAgo(DateTime? dateTime) => StringUtils.formatTimeAgo(dateTime);
}
