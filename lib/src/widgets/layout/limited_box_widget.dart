import 'package:flutter/material.dart';

class LimitedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 100,
      child: Image.network('https://picsum.photos/400'),
    );
  }
}
