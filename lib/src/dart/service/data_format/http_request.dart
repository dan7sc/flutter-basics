import 'dart:convert';
import 'dart:io';

void _handleResponse(HttpClientResponse response) {
  response.transform(utf8.decoder).listen(print);
}

void main() async {
  String username = 'test';
  String password = '12345';
  HttpClient httpClient = HttpClient();

  // Using async await
  // Send http get request
  HttpClientRequest request =
      await httpClient.getUrl(Uri.parse('https://httpbin.org/get'));
  HttpClientResponse response = await request.close();
  _handleResponse(response);

  // Write http request body
  request = await httpClient.postUrl(Uri.parse('https://httpbin.org/post'));
  request.write('hello');
  response = await request.close();
  _handleResponse(response);

  // Modify http request headers
  request = await httpClient.getUrl(Uri.parse('https://httpbin.org/headers'));
  request.headers.set(HttpHeaders.userAgentHeader, 'my-agent');
  response = await request.close();
  _handleResponse(response);

  // Basic authentication
  Uri uri = Uri.parse('https://httpbin.org/basic-auth/$username/$password');
  httpClient.addCredentials(
      uri, '', HttpClientBasicCredentials(username, password));
  request = await httpClient.getUrl(uri);
  response = await request.close();
  _handleResponse(response);

  // // Using callback
  // Send http get request
  // httpClient
  //     .getUrl(Uri.parse('https://httpbin.org/get'))
  //     .then((HttpClientRequest request) => request.close())
  //     .then(_handleResponse);

  // Write http request body
  // httpClient
  //     .postUrl(Uri.parse('https://httpbin.org/post'))
  //     .then((HttpClientRequest request) {
  //         request.write('hello');
  //         return request.close();
  //     }).then(_handleResponse);

  // Modify http request headers
  // httpClient
  //     .getUrl(Uri.parse('https://httpbin.org/headers'))
  //     .then((HttpClientRequest request) {
  //   request.headers.set(HttpHeaders.userAgentHeader, 'my-agent');
  //   return request.close();
  // }).then(_handleResponse);

  // Basic authentication
  // httpClient.addCredentials(
  //     uri, '', HttpClientBasicCredentials(username, password));
  // httpClient
  //     .getUrl(uri)
  //     .then((HttpClientRequest request) => request.close())
  //     .then(_handleResponse);
}
