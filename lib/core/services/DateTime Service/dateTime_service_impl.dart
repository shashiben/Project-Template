import 'package:template/core/services/DateTime%20Service/dateTime_service.dart';

class DateTimeServiceImpl extends DateTimeService {
  DateTime dateTime = DateTime.now();
  List<String> weekDayList = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  List<String> monthsList = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  List<String> shortMonthsList = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];
  @override
  String getPresentMonth({bool short = false}) {
    int month = dateTime.month;
    return short ? shortMonthsList[month] : monthsList[month];
  }

  @override
  String getTime({DateTime dateTime}) {
    String time = dateTime.hour.toString() + ":" + dateTime.minute.toString();
    return time;
  }

  @override
  String getWeekDay() {
    int index = dateTime.weekday;
    return weekDayList[index - 1];
  }

  @override
  String getWholeDate({DateTime dateTime, bool isIncludeTime = true}) {
    try {
      String tim = monthsList[dateTime.month - 1] +
          " " +
          dateTime.day.toString() +
          "," +
          dateTime.year.toString() +
          (!isIncludeTime ? "" : (" " + getTime(dateTime: dateTime)));
      return tim;
    } catch (e) {
      print(e);
      return e.toString();
    }
  }

  @override
  String timeAgo(DateTime dateTime) {
    final date2 = DateTime.now();
    final difference = date2.difference(dateTime);

    if ((difference.inDays / 365).floor() >= 2) {
      return '${(difference.inDays / 365).floor()} years ago';
    } else if ((difference.inDays / 365).floor() >= 1) {
      return 'Last year';
    } else if ((difference.inDays / 30).floor() >= 2) {
      return '${(difference.inDays / 365).floor()} months ago';
    } else if ((difference.inDays / 30).floor() >= 1) {
      return 'Last month';
    } else if ((difference.inDays / 7).floor() >= 2) {
      return '${(difference.inDays / 7).floor()} weeks ago';
    } else if ((difference.inDays / 7).floor() >= 1) {
      return 'Last week';
    } else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return 'Yesterday';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours >= 1) {
      return 'An hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return 'A minute ago';
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return 'Just now';
    }
  }

  List<int> generateCurrentWeekDays() {
    List<int> weekDays = [];

    DateTime dateTime = DateTime.now();
    int weekDay = dateTime.weekday;

    //?Add Left Dates
    for (int i = 0; i < weekDay - 1; i++) {
      weekDays
          .add(dateTime.subtract(Duration(days: dateTime.weekday - i - 1)).day);
    }

    //?Add Right Dates
    for (int i = weekDay - 1; i < 7; i++) {
      weekDays.add(dateTime.add(Duration(days: i - dateTime.weekday + 1)).day);
    }

    return weekDays;
  }
}
