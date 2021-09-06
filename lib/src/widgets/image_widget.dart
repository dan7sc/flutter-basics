import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 300,
      child: Image.network(
        'https://picsum.photos/300/200',
        alignment: Alignment.topCenter,
        repeat: ImageRepeat.noRepeat,
      ),
    );
  }
}
