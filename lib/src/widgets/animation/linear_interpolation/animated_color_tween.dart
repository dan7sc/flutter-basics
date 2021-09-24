import 'package:flutter/material.dart';

import 'animated_color.dart';

class AnimatedColorTween extends StatefulWidget {
  @override
  _AnimatedColorTweenState createState() => _AnimatedColorTweenState();
}

class _AnimatedColorTweenState extends State<AnimatedColorTween>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<Color?> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    );
    animation =
        ColorTween(begin: Colors.red, end: Colors.green).animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedColor(
      animation: animation,
    );
  }
}
