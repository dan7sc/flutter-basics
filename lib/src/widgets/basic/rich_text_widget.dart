import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Level 1',
        style: TextStyle(
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: 'Level 2',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            children: [
              TextSpan(
                text: 'Level 3',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
