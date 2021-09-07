import 'dart:math';

import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Transform.rotate(
          angle: pi / 4.0,
          origin: Offset(10, 10),
          child: Text('Hello World'),
        ),
        Transform.translate(
          offset: Offset(50, 50),
          child: Text('Hello World'),
        ),
      ],
    );
  }
}
