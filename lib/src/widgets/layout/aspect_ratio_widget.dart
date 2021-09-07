import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.loose(Size(200, 200)),
      child: AspectRatio(
        // height: 200 / (4.0 / 3.0) = 150.0
        aspectRatio: 4.0 / 3.0,
        child: Image.network('https://picsum.photos/400/300'),
      ),
    );
  }
}
