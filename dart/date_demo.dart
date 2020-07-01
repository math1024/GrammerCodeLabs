void main() {
  var now = new DateTime.now();
  print(now);
  print(now.add(new Duration(minutes: 10))); //加10分钟 
  print(now.add(new Duration(minutes: -10))); //减10分钟

  print(now.add(new Duration(hours: 2))); //加2小时
  print(now.add(new Duration(hours: -2))); //减2小时 

  print(now.add(new Duration(days: 2))); //加2天
  print(now.add(new Duration(hours: -2))); //减2天  

  /*
  如需要只获取日期需要'import package:intl/intl.dart';
  DateFormat('yyyy-MM-dd').format(DateTime.now()
  */
}
