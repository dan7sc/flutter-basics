import 'package:flutter/material.dart';

class ReverseText extends StatefulWidget {
  @override
  _ReverseTextState createState() => _ReverseTextState();
}

class _ReverseTextState extends State<ReverseText> {
  final TextEditingController _controller = TextEditingController();
  String? _value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
              ),
            ),
            ElevatedButton(
              child: Text('Go'),
              onPressed: () {
                setState(() {
                  _value = _controller.text;
                });
              },
            ),
          ],
        ),
        Text((_value ?? "").split("").reversed.join()),
      ],
    );
  }
}
