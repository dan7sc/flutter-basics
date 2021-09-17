void main() {
  // result 1
  Stream.fromIterable([1, 2, 3]).listen(
    (value) => print('result 1: $value'),
    onError: (error) => print('error: $error in result 1'),
    onDone: () => print('result 1 done'),
    cancelOnError: true,
  );

  // result 2
  Stream.fromIterable([1, 2, 3]).asyncExpand((int value) {
    return Stream.fromIterable([value * 5, value * 10]);
  }).listen((value) => print('result 2: $value'));

  // result 3
  Stream.fromIterable([1, 2, 3]).expand((int value) {
    return [value * 5, value * 10];
  }).listen((value) => print('result 3: $value'));

  // result 4
  Stream.fromIterable([1, 2, 3]).asyncMap((int value) {
    return Future.delayed(Duration(seconds: 1), () => value * 10);
  }).listen((value) => print('result 4: $value'));

  // result 5
  Stream.fromIterable([1, 2, 3]).map((value) => value * 10).listen((value) => print('result 5: $value'));

  // result 6
  Stream.fromIterable([1, 2, 3]).distinct().listen((value) => print('result 6: $value'));

  // result 7
  Stream.fromIterable([1, 2, 3]).skip(1).listen((value) => print('result 7: $value'));

  // result 8
  Stream.fromIterable([1, 2, 3])
      .skipWhile((value) => value % 2 == 1)
      .listen((value) => print('result 8: $value'));

  // result 9
  Stream.fromIterable([1, 2, 3]).take(1).listen((value) => print('result 9: $value'));

  // result 10
  Stream.fromIterable([1, 2, 3])
      .takeWhile((value) => value % 2 == 1)
      .listen((value) => print('result 10: $value'));

  // result 11
  Stream.fromIterable([1, 2, 3])
      .where((value) => value % 2 == 1)
      .listen((value) => print('result 11: $value'));
}
