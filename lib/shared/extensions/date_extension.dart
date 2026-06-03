import 'package:tanlu_management/core/utils/date_formatter.dart';

extension DateExtension on DateTime {
  String toDateString() => DateFormatter.date(this);
  String toDateTimeString() => DateFormatter.dateTime(this);
}
