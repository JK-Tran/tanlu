import 'package:intl/intl.dart';
import 'package:tanlu_management/shared/constants/format/number_format_constants.dart';

class NumberFormatUtils {
  NumberFormatUtils._();

  static String formatNumber(int number) {
    return NumberFormat(NumberFormatConstants.defaultFormat).format(number);
  }

  static String formatScore(String scoreStr) {
    final scoreValue = double.tryParse(scoreStr) ?? 0.0;
    final normalizedScore = scoreValue <= 10 ? scoreValue * 10 : scoreValue;
    return normalizedScore.ceil().toString();
  }
}
