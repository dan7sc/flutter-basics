import 'package:flutter/material.dart';

class TextSpanWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
        style: TextStyle(
          fontSize: 16,
        ),
        children: [
          TextSpan(
            text: 'The quick brow ',
          ),
          TextSpan(
            text: 'fox',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          TextSpan(
            text: ' jumps over the lazy ',
          ),
          TextSpan(
            text: 'dog',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
