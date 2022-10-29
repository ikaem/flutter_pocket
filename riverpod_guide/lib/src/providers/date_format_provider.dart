import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final dateFormatProvider = Provider<DateFormat>((ref) {
  return DateFormat.MMMEd();
});
