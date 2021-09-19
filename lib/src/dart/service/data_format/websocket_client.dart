import 'dart:io';

void main() async {
  try {
    WebSocket client = await WebSocket.connect('ws://127.0.0.1:8000');

    print('Client listen on ws://127.0.0.1:8000');

    client.listen(print, onError: print);

    client.add('hello ');
    client.add('world!');

    client.close();
  } catch (e) {
    print('Error: $e');
  }
}
