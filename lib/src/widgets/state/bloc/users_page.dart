import 'package:flutter/material.dart';

import 'keyword_input.dart';
import 'users_bloc.dart';
import 'users_client.dart';
import 'users_view.dart';

class UsersPage extends StatefulWidget {
  UsersPage({
    Key? key,
    required this.usersClient,
  })  : assert(usersClient != null),
        super(key: key);

  final UsersClient? usersClient;

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  late UsersBloc _usersBloc;

  @override
  void initState() {
    super.initState();
    _usersBloc = UsersBloc(usersClient: widget.usersClient);
  }

  @override
  void dispose() {
    _usersBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: KeywordInput(
            usersBloc: _usersBloc,
          ),
        ),
        Expanded(
          child: UsersView(
            usersBloc: _usersBloc,
          ),
        ),
      ],
    );
  }
}
