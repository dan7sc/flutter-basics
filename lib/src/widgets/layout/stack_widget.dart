import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.network('https://picsum.photos/240'),
            Image.network('https://picsum.photos/100'),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.network('https://picsum.photos/110'),
            ),
          ],
        ),
        IndexedStack(
          index: 2,
          children: [
            Image.network('https://picsum.photos/240'),
            Image.network('https://picsum.photos/100'),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.network('https://picsum.photos/110'),
            ),
          ],
        ),
      ],
    );
  }
}
