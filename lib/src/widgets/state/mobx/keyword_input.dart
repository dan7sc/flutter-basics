import 'package:flutter/material.dart';

import 'users_store.dart';

class KeywordInput extends StatefulWidget {
  KeywordInput({this.usersStore});

  final UsersStore? usersStore;

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
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            String keyword = _keywordFormKey.currentState!.value ?? "";
            if (keyword.isNotEmpty) {
              widget.usersStore!.setKeyword(keyword);
              widget.usersStore!.getUsers();
            }
          },
        ),
      ],
    );
  }
}
