import 'dart:io';

void main() async {
  HttpServer server = await HttpServer.bind('127.0.0.1', 8000);

  print('Server listen on ws://${server.address.address}:${server.port}');

  // server.transform(WebSocketTransformer()).listen(onWebSocketData);
  server.transform(WebSocketTransformer()).listen(
    (socket) {
      socket.addStream(socket.map((data) => data.toUpperCase()));
  });
}

void onWebSocketData(WebSocket client){
  client.listen((data) {
    client.add('Echo: $data');
  });
}
