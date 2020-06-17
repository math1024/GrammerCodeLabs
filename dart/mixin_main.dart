/// 单继承链条
/// https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
class A {
  String getMessage() => 'A';
}

class B {
  String getMessage() => 'B';
}

class P {
  String getMessage() => 'P';
}

class AB extends P with A, B {}

class BA extends P with B, A {}

void main() {
  AB ab = AB();
  print(ab is P);
  print(ab is A);
  print(ab is B);

  BA ba = BA();
  print(ba is P);
  print(ba is A);
  print(ba is B);

  String result = '';
  result += ab.getMessage();
  result += ba.getMessage();

  print(result);
}
