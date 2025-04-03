import 'package:intl/intl.dart';

extension DatetimeExtension on DateTime {
  static final DateFormat _ddMMyHHmm = DateFormat('dd.MM.y HH:mm');

  String get ddMMyyHHmm => _ddMMyHHmm.format(this);
}
