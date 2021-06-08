abstract class DateTimeService {
  DateTime dateTime;
  String getPresentMonth({bool short = false});
  String timeAgo(DateTime dateTime);
  String getWholeDate({DateTime dateTime, bool isIncludeTime = true});
  String getTime({DateTime dateTime});
  String getWeekDay();
  List<int> generateCurrentWeekDays();
}
