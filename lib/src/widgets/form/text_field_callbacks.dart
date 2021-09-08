import 'package:flutter/material.dart';

class TextFieldCallbacks extends StatefulWidget {
  @override
  _TextFieldCallbacksState createState() => _TextFieldCallbacksState();
}

class _TextFieldCallbacksState extends State<TextFieldCallbacks> {
  List<String> _logs = [];

  void _log(String value) {
    setState(() {
      _logs.add(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (text) => _log('changed: $text'),
          onEditingComplete: () => _log('completed'),
          onSubmitted: (text) => _log('submitted: $text'),
        ),
        Text.rich(TextSpan(
          children: _logs.map((log) => TextSpan(text: '$log\n')).toList(),
        )),
      ],
    );
  }
}
