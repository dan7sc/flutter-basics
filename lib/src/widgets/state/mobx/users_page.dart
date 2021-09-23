import 'package:flutter/material.dart';

import 'keyword_input.dart';
import 'users_store.dart';
import 'users_view.dart';

class UsersMobxPage extends StatefulWidget {
  UsersMobxPage({
    Key? key,
    required this.usersStore,
  }) : super(key: key);

  final UsersStore usersStore;

  @override
  _UsersMobxPageState createState() => _UsersMobxPageState();
}

class _UsersMobxPageState extends State<UsersMobxPage> {
  @override
  Widget build(BuildContext context) {
    UsersStore usersStore = widget.usersStore;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: KeywordInput(
            usersStore: usersStore,
          ),
        ),
        Expanded(
          child: UsersView(
            usersStore: usersStore,
          ),
        ),
      ],
    );
  }
}
