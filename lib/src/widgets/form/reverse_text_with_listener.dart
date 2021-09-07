import 'package:flutter/material.dart';

class ReverseTextWithListener extends StatefulWidget {
  @override
  _ReverseTextWithListenerState createState() =>
      _ReverseTextWithListenerState();
}

class _ReverseTextWithListenerState extends State<ReverseTextWithListener> {
  late final TextEditingController _controller;
  String? _value;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(_handleTextChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_handleTextChanged);
    super.dispose();
  }

  void _handleTextChanged() {
    setState(() {
      _value = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _controller,
        ),
        Text((_value ?? "").split("").reversed.join()),
      ],
    );
  }
}
