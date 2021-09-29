import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatelessWidget {
  AnimatedContainerWidget({
    Key? key,
    required this.animation,
  })  : width = Tween(begin: 0.0, end: 300.0).animate(CurvedAnimation(
          parent: animation,
          curve: Interval(0.0, 0.5, curve: Curves.easeInOut),
        )),
        height = Tween(begin: 100.0, end: 300.0).animate(CurvedAnimation(
          parent: animation,
          curve: Interval(0.2, 0.7, curve: Curves.bounceInOut),
        )),
        backgroundColor = ColorTween(begin: Colors.red, end: Colors.green)
            .animate(CurvedAnimation(
          parent: animation,
          curve: Interval(0.3, 1.0, curve: Curves.elasticInOut),
        )),
        super(key: key);

  final Animation<double> animation;
  final Animation<double> width;
  final Animation<double> height;
  final Animation<Color?> backgroundColor;

  Widget _build(BuildContext context, Widget? child) {
    return Container(
      width: width.value,
      height: height.value,
      decoration: BoxDecoration(color: backgroundColor.value),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: _build,
    );
  }
}
