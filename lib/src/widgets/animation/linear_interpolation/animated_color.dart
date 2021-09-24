import 'package:flutter/material.dart';

class AnimatedColor extends AnimatedWidget {
  AnimatedColor({
    Key? key,
    required this.animation,
  }) : super(key: key, listenable: animation);

  final Animation<Color?> animation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(color: animation.value),
    );
  }
}
