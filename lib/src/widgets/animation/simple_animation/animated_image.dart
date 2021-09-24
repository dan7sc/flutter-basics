import 'package:flutter/material.dart';

class AnimatedImage extends AnimatedWidget {
  AnimatedImage({
    Key? key,
    required this.animation,
  }) : super(key: key, listenable: animation);

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: animation.value,
      height: animation.value,
      child: Image.network('https://picsum.photos/300'),
    );
  }
}
