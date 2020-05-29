/// 记录基本语法
void main() {
  print('hello dart');

  /// 查看对象类型
  var a = 1;
  print(a.runtimeType.toString());
  var list = ['a','b', 'c'];
  print(list.runtimeType.toString());


  var fruits = ['banana', 'pineapple', 'watermelon'];
  fruits.forEach((fruit) => print(fruit));

  /// map
  var map = fruits.map((item) => 'I love $item');
  print('map$map');
  print(map.runtimeType.toString());
  var map2 = fruits.map((item) => 'I love $item').toList();
  print(map2);
  print(map2.runtimeType.toString());

  /// reduce,fold
  var numbers = [1, 3, 2, 5, 4, 7];
  print(numbers.contains(2)); 
  numbers.sort((a, b) => a-b);
  print(numbers);
  var sum = numbers.reduce((curr, next) => curr + next);
  print(sum);
  const initialValue = 10;
  var sum2 = numbers.fold(initialValue, (curr, next) => curr + next);
  print(sum2); 

  /// take skip 
  var fiboNumbers = [1, 2, 3, 5, 8, 13, 21];
  print(fiboNumbers.take(3).toList()); // => [1, 2, 3]
  print(fiboNumbers.skip(5).toList()); // => [13, 21]
  print(fiboNumbers.take(3).skip(2).take(1).toList()); // => [3]
  /// clone 
  var clonedFiboNumbers = List.from(fiboNumbers);
  print('Cloned list: $clonedFiboNumbers');
}
