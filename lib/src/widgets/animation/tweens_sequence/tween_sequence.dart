import 'package:flutter/material.dart';

import 'animated_box.dart';

class TweenSequenceWidget extends StatefulWidget {
  @override
  _TweenSequenceWidgetState createState() => _TweenSequenceWidgetState();
}

class _TweenSequenceWidgetState extends State<TweenSequenceWidget>
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
    animation = TweenSequence([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: 100.0),
        weight: 40,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 100, end: 300.0)
            .chain(CurveTween(curve: Curves.bounceIn)),
        weight: 60,
      ),
    ]).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBox(
      animation: animation,
    );
  }
}
