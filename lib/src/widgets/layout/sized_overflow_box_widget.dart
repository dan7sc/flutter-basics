import 'package:flutter/material.dart';

class SizedOverflowBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.loose(Size(100, 100)),
      child: SizedOverflowBox(
        size: Size(50, 50),
        child: Image.network('https://picsum.photos/400'),
      ),
    );
  }
}
