import 'dart:async';

void main() {
  StreamController<int> controller = StreamController();
  controller.add(1);
  controller.add(2);
  controller.stream.listen(print, onError: print, onDone: () => print('done'));
  controller.addError('error');
  controller.add(3);
  controller.close();
}
