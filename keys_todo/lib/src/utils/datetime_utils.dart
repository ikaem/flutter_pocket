import 'package:intl/intl.dart';

class DateTimeUtils {
  static String formatDate(DateTime dateTime) =>
      DateFormat("MMM d YYYY").format(dateTime);

  static String formatDateFromEpoch(int dateTime) =>
      formatDate(DateTime.fromMillisecondsSinceEpoch(dateTime * 1000));
}
