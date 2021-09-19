import 'dart:io';

void main() async {
  try {
    Socket client = await Socket.connect('127.0.0.1', 8000);

    print('Client connect to http://${client.address.address}:${client.port}');
    client.listen((data) => print(String.fromCharCodes(data)));

    client.write('hello ');
    client.write('world!');

    client.close();
  } catch (e) {
    print('Error: $e');
  }
}
