import 'package:flutter/material.dart';

import 'service_users.dart';

class UsersList extends StatefulWidget {
  UsersList(this.users);

  final List<User>? users;

  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.users!.length,
      itemBuilder: (BuildContext context, index) {
        return ListTile(
          leading: Image.network('${widget.users![index].avatarUrl}'),
          title: Text('${widget.users![index].login}'),
          subtitle: Text('${widget.users![index].name}'),
          trailing: Text('${widget.users![index].id}'),
        );
      },
    );
  }
}
