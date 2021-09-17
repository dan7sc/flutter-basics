void main() {
  Stream.fromIterable([1, 2, 3]).listen((value) => print('result 1: $value'));

  Stream.fromFuture(Future.value(1))
      .listen((value) => print('result 2: $value'));

  Stream.fromFutures([Future.value(1), Future.value('error'), Future.value(2)])
      .listen((value) => print('result 3: $value'));

  Stream.periodic(Duration(seconds: 1), (int count) => count * 2)
      .take(5)
      .listen((value) => print('result 4: $value'));
}
