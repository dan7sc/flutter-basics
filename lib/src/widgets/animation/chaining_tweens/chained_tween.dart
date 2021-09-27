import 'package:flutter/material.dart';

import 'animated_box.dart';

class ChainedTween extends StatefulWidget {
  @override
  _ChainedTweenState createState() => _ChainedTweenState();
}

class _ChainedTweenState extends State<ChainedTween>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..forward();
    animation = Tween<double>(begin: 80, end: 300.0)
        .chain(CurveTween(curve: Curves.bounceIn))
        .animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBox(
      animation: animation,);
  }
}
