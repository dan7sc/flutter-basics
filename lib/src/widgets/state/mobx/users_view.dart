import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'users_list.dart';
import 'users_store.dart';

class UsersView extends StatelessWidget {
  UsersView({required this.usersStore});

  final UsersStore usersStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) {
        if (usersStore.empty) {
          return Center(
            child: Text('Input keyword and search'),
          );
        } else if (usersStore.loading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (usersStore.hasError) {
          return Center(
            child: Text(
              'Failed to get users',
              style: TextStyle(color: Colors.red),
            ),
          );
        } else {
          return UsersList(usersStore.users);
        }
      },
    );
  }
}
