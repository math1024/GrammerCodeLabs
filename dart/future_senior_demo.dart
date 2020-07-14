import "dart:async";

// from https://juejin.im/post/5d7f5e7c6fb9a06b0c089920
// 情况一：Future没有执行完成（有任务需要执行），那么then会直接被添加到Future的函数执行体后；
// 情况二：如果Future执行完后就then，该then的函数体被放到如微任务队列，当前Future执行完后执行微任务队列；
// 情况三：如果Future世链式调用，意味着then未执行完，下一个then不会执行；
void main() {
  print("main start");

  Future(() => print("task1"));

  final future = Future(() => null);

  Future(() => print("task2")).then((_) {
    print("task3");
    scheduleMicrotask(() => print('task4'));
  }).then((_) => print("task5"));

  future.then((_) => print("task6"));
  scheduleMicrotask(() => print('task7'));

  Future(() => print('task8'))
      .then((_) => Future(() => print('task9')))
      .then((_) => print('task10'));

  print("main end");
}
