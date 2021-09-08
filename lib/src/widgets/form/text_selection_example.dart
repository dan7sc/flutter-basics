import 'package:flutter/material.dart';

class TextSelectionExample extends StatefulWidget {
  @override
  _TextSelectionExampleState createState() => _TextSelectionExampleState();
}

class _TextSelectionExampleState extends State<TextSelectionExample> {
  late final TextEditingController _controller;
  String? _selection;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(_handleTextSelection);
  }

  @override
  void dispose() {
    _controller.removeListener(_handleTextSelection);
    super.dispose();
  }

  _handleTextSelection() {
    TextSelection selection = _controller.selection;
    _selection = selection.textInside(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _controller,
        ),
        Row(
          children: [
            ElevatedButton(
              child: Text('Select text [0, 5]'),
              onPressed: () {
                setState(() {
                  _controller.selection = TextSelection(
                    baseOffset: 0,
                    extentOffset: 5,
                  );
                });
              },
            ),
            ElevatedButton(
              child: Text('Move cursor to offset 1'),
              onPressed: () {
                setState(() {
                  _controller.selection = TextSelection.collapsed(offset: 1);
                });
              },
            ),
          ],
        ),
        Text.rich(TextSpan(
          children: [
            TextSpan(
              text: 'Selected:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: _selection),
          ],
        )),
      ],
    );
  }
}
