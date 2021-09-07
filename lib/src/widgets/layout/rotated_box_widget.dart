import 'package:flutter/material.dart';

class RotatedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Text(
        'Hello World',
        textScaleFactor: 2,
      ),
    );
  }
}
