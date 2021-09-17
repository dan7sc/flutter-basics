void main() {
  Stream.fromIterable([1, 2, 3])
      .forEach((value) => 2)
      .then((value) => print('result 1: $value'));

  Stream.fromIterable([1, 2, 3])
      .contains(1)
      .then((value) => print('result 2: $value'));

  Stream.fromIterable([1, 2, 3])
      .any((value) => value % 2 == 0)
      .then((value) => print('result 3: $value'));

  Stream.fromIterable([1, 2, 3])
      .every((value) => value % 2 == 0)
      .then((value) => print('result 4: $value'));

  Stream.fromIterable([1, 2, 3])
      .fold(0, (int v1, int v2) => v1 + v2)
      .then((value) => print('result 5: $value'));

  Stream.fromIterable([1, 2, 3])
      .reduce((v1, v2) => v1 * v2)
      .then((value) => print('result 6: $value'));

  Stream.fromIterable([1, 2, 3])
      .firstWhere((value) => value % 2 == 1)
      .then((value) => print('result 7: $value'));

  Stream.fromIterable([1, 2, 3])
      .lastWhere((value) => value % 2 == 1)
      .then((value) => print('result 8: $value'));

  Stream.fromIterable([1, 2, 3])
      .singleWhere((value) => value == 1)
      .then((value) => print('result 9: $value'));

  // Unhandled exception: Bad state: Too many elements
  // Stream.fromIterable([1, 2, 3])
  //     .singleWhere((value) => value % 2 == 1)
  //     .then((value) => print('result 9: $value'));
}
