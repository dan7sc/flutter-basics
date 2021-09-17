import 'dart:math';

void main() {
  int interval = 5;

  Future.delayed(
    Duration(seconds: interval),
    () {
      if (Random().nextBool()) {
        return 1;
      } else {
        throw Error();
      }
    },
  ).then((value) {
    print('result 1: $value');
  }).catchError((error) {
    print('error: $error in result 1');
  });

  Future.value(1)
      .then((value) => value + 1)
      .then((value) => value * 10)
      .then((value) => value + 2)
      .then((value) => print('result 2: $value'));

  Future.value(1).then((value) {
    print('result 3: $value');
  }).whenComplete(() => print('result 3 complete'));

  Future.delayed(Duration(seconds: 5), () => 1)
      .timeout(
        Duration(seconds: 2),
        onTimeout: () => 10,
      )
      .then((value) => print('result 4: $value'));
}
