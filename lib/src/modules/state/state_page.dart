import 'package:flutter/material.dart';
import 'package:flutter_basics/src/widgets/widgets.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '/src/widgets/state/redux/users_reducer.dart';

class StatePage extends StatefulWidget {
  StatePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _StatePageState createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  final UsersClient usersClient = UsersClient();
  final store = new Store<UsersState>(
    usersReducers,
    initialState: UsersState(),
    middleware: [thunkMiddleware],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? 'Service Page'),
      ),
      body: Center(
        child: UsersReduxPage(
          store: store,
          usersClient: usersClient,
        ),
      ),
    );
  }
}
