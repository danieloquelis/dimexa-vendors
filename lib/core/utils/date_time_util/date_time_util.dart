import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:intl/intl.dart';

class DateTimeUtil {
  static String dateTimeToText(DateTime? dateTime) {
    if (dateTime == null) {
      return "";
    }

    final DateTime now = DateTime.now();
    //getting clock format
    final timeFormat = DateFormat('hh:mm a');
    final dateFormat = DateFormat('dd/MM');
    final clockString = timeFormat.format(dateTime);

    String prefix = "";
    int diff = now.day - dateTime.day;

    if (diff == 0) {
      prefix = "hoy";
    }

    if (diff == 1) {
      prefix = "ayer";
    }

    if (diff > 1) {
      prefix = dateFormat.format(dateTime);
    }
    return '$prefix a las $clockString';
  }

  static String dateTimeToString(DateTime? dateTime) {
    if (dateTime == null) {
      return "";
    }

    final dateFormat = DateFormat('dd/MM/yyyy');

    String date = "";
    try {
      date = dateFormat.format(dateTime);
    }catch (e) {
      //ignore
    }

    return date;
  }

  static String getNameDay(String? numberDay) {
    if (StringUtils.isNullOrEmpty(numberDay)) {
      return "";
    }

    int index = int.parse(numberDay!);

    if (index == 8) {
      return "Todos";
    }

    List<String> days = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"];

    return days[index - 1];
  }
}