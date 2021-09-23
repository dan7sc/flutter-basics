import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'keyword_input.dart';
import 'users_client.dart';
import 'users_state.dart';
import 'users_view.dart';

class UsersReduxPage extends StatefulWidget {
  UsersReduxPage({
    Key? key,
    required this.store,
    required this.usersClient,
  })  : assert(store != null),
        assert(usersClient != null),
        super(key: key);

  final Store<UsersState>? store;
  final UsersClient? usersClient;

  @override
  _UsersReduxPageState createState() => _UsersReduxPageState();
}

class _UsersReduxPageState extends State<UsersReduxPage> {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<UsersState>(
      store: widget.store!,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: KeywordInput(
              usersClient: widget.usersClient,
            ),
          ),
          Expanded(
            child: UsersView(),
          ),
        ],
      ),
    );
  }
}
