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

    if (now.difference(dateTime).inHours <= 24) {
      prefix = "hoy";
    }

    if (now.difference(dateTime).inHours > 24 && now.difference(dateTime).inHours <= 48) {
      prefix = "ayer";
    }

    if (now.difference(dateTime).inHours > 48) {
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
}