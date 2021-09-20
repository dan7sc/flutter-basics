import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import 'service_users.dart';

class RestServicePage extends StatelessWidget {
  static const String githubUrl = 'https://api.github.com/users';

  final Future<List<User>> _users = HttpClient()
      .getUrl(Uri.parse(githubUrl))
      .then((HttpClientRequest request) => request.close())
      .then((HttpClientResponse response) {
    return response.transform(utf8.decoder).join("").then((String content) {
      return (jsonDecode(content) as List<dynamic>)
          .map((json) => User.fromJson(json))
          .toList();
    });
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<User>>(
      future: _users,
      builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
        if (snapshot.hasData) {
          return UsersList(snapshot.data!);
        } else if (snapshot.hasError) {
          return Center(
            child: Text(
              '${snapshot.error}',
              style: TextStyle(color: Colors.red),
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class UsersList extends StatelessWidget {
  UsersList(this.users);

  final List<User> users;
  final String _unknown = 'unknown';

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        User user = users[index];
        return ListTile(
          leading: Image.network('${user.avatarUrl}'),
          title: Text(user.login ?? _unknown),
          subtitle: Text(user.name ?? _unknown),
          trailing: Text('${user.id}'),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
      itemCount: users.length,
    );
  }
}
