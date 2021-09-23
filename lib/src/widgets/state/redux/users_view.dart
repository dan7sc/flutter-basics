import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'users_list.dart';
import 'users_state.dart';

class UsersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<UsersState, UsersState>(
      converter: (Store<UsersState> store) => store.state,
      builder: (BuildContext context, UsersState state) {
        if (state.empty) {
          return Center(
            child: Text('Input keyword and search'),
          );
        } else if (state.loading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.error) {
          return Center(
            child: Text(
              'Failed to get users',
              style: TextStyle(color: Colors.red),
            ),
          );
        } else {
          return UsersList(state.data);
        }
      },
    );
  }
}
