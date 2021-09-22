import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'users_bloc.dart';
import 'users_list.dart';
import 'users_state.dart';

class UsersView extends StatelessWidget {
  UsersView({this.usersBloc});

  final UsersBloc? usersBloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: usersBloc,
      builder: (BuildContext context, UsersState state) {
        if (state is UsersEmpty) {
          return Center(
            child: Text('Input keyword and search'),
          );
        } else if (state is UsersLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is UsersError) {
          return Center(
            child: Text(
              'Failed to get users',
              style: TextStyle(color: Colors.red),
            ),
          );
        } else if (state is UsersLoaded) {
          return UsersList(state.users);
        }
        return Text('Empty');
      },
    );
  }
}
