import 'package:flutter/material.dart';

class OverflowBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: OverflowBox(
        minWidth: 200,
        minHeight: 200,
        maxWidth: 200,
        maxHeight: 200,
        child: Image.network('https://picsum.photos/300'),
      ),
    );
  }
}
