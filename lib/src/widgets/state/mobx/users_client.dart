import 'dart:convert';
import 'package:http/http.dart' as http;

import 'service_users.dart';

class UsersClient {
  Future<List<User>> getUsers(keyword) async {
    final List<User> result = [];
    final url = Uri.parse('https://api.github.com/users/$keyword');
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw new Exception('Unable to fetch data');
    } else {
      final rawResult = json.decode(response.body);
      result.add(User.fromJson(rawResult));
    }
    return result;
  }
}
