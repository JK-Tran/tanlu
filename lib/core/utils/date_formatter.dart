import 'package:intl/intl.dart';

/// Format ngày tháng. Thêm package intl nếu dùng.
abstract final class DateFormatter {
  DateFormatter._();

  static final DateFormat _date = DateFormat('dd/MM/yyyy');
  static final DateFormat _dateTime = DateFormat('dd/MM/yyyy HH:mm');

  static String date(DateTime? d) => d == null ? '' : _date.format(d);
  static String dateTime(DateTime? d) => d == null ? '' : _dateTime.format(d);
}
