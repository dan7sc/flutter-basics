void main() {
  Future(() => 1).then((value) => print('1: $value'));
  Future.delayed(Duration(seconds: 3), () => 1).then((value) => print('2: $value'));
  Future.sync(() => 1).then((value) => print('3: $value'));
  Future.value(1).then((value) => print('4: $value'));
  Future.error(Error()).catchError((e) => print('5: $e'));
}
