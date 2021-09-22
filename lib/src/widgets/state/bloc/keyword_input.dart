import 'package:flutter/material.dart';

import 'users_event.dart';
import 'users_bloc.dart';

class KeywordInput extends StatefulWidget {
  KeywordInput({this.usersBloc});

  final UsersBloc? usersBloc;

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
          onPressed: () async {
            String keyword = _keywordFormKey.currentState!.value ?? "";
            if (keyword.isNotEmpty) {
              widget.usersBloc!.add(GetUsersEvent(keyword: keyword));
            }
          },
        ),
      ],
    );
  }
}
