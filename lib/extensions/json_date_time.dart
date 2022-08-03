
class JsonDateTime extends DateTime {
  JsonDateTime(int super.year, [int super.month=1, int super.day=1, int super.hour=0, int super.minute=0, int super.second=0, int super.millisecond=0, int super.microsecond=0]);
  JsonDateTime.utc(int super.year,
      [int super.month = 1,
        int super.day = 1,
        int super.hour = 0,
        int super.minute = 0,
        int super.second = 0,
        int super.millisecond = 0,
        int super.microsecond = 0]);
  JsonDateTime.fromMicrosecondsSinceEpoch(int microseconds) : super.fromMicrosecondsSinceEpoch(microseconds);
  JsonDateTime.fromMillisecondsSinceEpoch(int milliseconds) : super.fromMillisecondsSinceEpoch(milliseconds);
  JsonDateTime.fromJson(dynamic json) : super.fromMicrosecondsSinceEpoch(DateTime.parse(json).microsecond);
  JsonDateTime.now() : super.now();
  static JsonDateTime parse(dynamic json) {
    return DateTime.parse(json) as JsonDateTime;
  }
}