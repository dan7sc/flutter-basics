import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'users_client.dart';
import 'users_reducer.dart';
import 'users_state.dart';

class KeywordInput extends StatefulWidget {
  KeywordInput({this.usersClient});

  final UsersClient? usersClient;

  @override
  _KeywordInputState createState() => _KeywordInputState();
}

class _KeywordInputState extends State<KeywordInput> {
  final GlobalKey<FormFieldState<String>> _keywordFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            key: _keywordFormKey,
          ),
        ),
        StoreBuilder<UsersState>(
          builder: (BuildContext context, Store<UsersState> store) {
            return IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                String keyword = _keywordFormKey.currentState!.value ?? "";
                if (keyword.isNotEmpty) {
                  store.dispatch(getUsers(widget.usersClient!, keyword));
                }
              },
            );
          },
        ),
      ],
    );
  }
}
