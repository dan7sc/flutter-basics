import 'package:flutter/material.dart';

class AnimatedBox extends AnimatedWidget {
  AnimatedBox({
    Key? key,
    required this.animation,
  }) : super(key: key, listenable: animation);

  final Animation<double> animation;
  final double _height = 300;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: animation.value,
      height: _height,
      child: Image.network('https://picsum.photos/300'),
    );
  }
}
