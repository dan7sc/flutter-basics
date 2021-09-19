import 'dart:convert';
import 'dart:io';

void main() async {
  ServerSocket server = await ServerSocket.bind('127.0.0.1', 8000);

  print('Server listen on http://${server.address.address}:${server.port}');

  server.listen(
    (socket) {
      socket.addStream(socket
        .map((data) => String.fromCharCodes(data).toUpperCase())
        .transform(utf8.encoder));
    },
    onError: (e) => print('Error: $e'),
  );

}
