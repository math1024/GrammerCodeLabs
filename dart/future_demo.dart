import 'dart:io';

void main() {
  print("main function start");
  // sleep
  print('-------eg 1------');
  print(getNetworkData());

  // future I no print "return data"
  print('-------eg 2------');
  print(getNetWorkDataByFuture('eg2'));

  // get future data
  print('-------eg 3------');
  var future = getNetWorkDataByFuture('eg3');
  future.then((value) {
    print(value);
  });
  print(future);

  print('-------eg 4-------');
  var futureError = getNetWorkDataByFutureError('eg4');
  futureError.then((value) {
    print(value);
  }).catchError((error) {
    print(error);
  });

  print('-------eg 5--------');
  getNetWorkDataByFuture('eg5').then((value1) {
    print(value1);
    return "content data2";
  }).then((value2) {
    print(value2);
    return "message data3";
  }).then((value3) {
    print(value3);
  });

  print('-----eg 6 -----');
  Future.value("direct").then((value) {
    print(value);
  });

  print('-----eg 7 -----');
  Future.delayed(Duration(seconds: 3), () {
    return "3秒后的信息";
  }).then((value) {
    print(value);
  });

  print('------eg 8--async await----');
  print(getNetWorkDataByFutureAwaitSync('eg8').then((value) => print(value)));

  print("main function end");
}

String getNetworkData() {
  sleep(Duration(seconds: 2));
  return "network data";
}

Future<String> getNetWorkDataByFuture(String str) {
  return Future<String>(() {
    sleep(Duration(seconds: 2));
    return str + " network data";
  });
}

Future<String> getNetWorkDataByFutureError(String str) {
  return Future<String>(() {
    throw Exception(str + " throw exception");
  });
}

Future<String> getNetWorkDataByFutureAwaitSync(String str) async {
  var result = await Future.delayed(Duration(seconds: 3), () {
    return str + " network data 8";
  });

  return "请求到的数据：" + result;
}
