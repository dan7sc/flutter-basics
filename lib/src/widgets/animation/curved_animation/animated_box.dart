import 'package:flutter/material.dart';

class AnimatedBox extends AnimatedWidget {
  AnimatedBox({
    Key? key,
    required this.animation,
  }) : super(key: key, listenable: animation);

  final Animation<double> animation;
  final double _width = 400;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      height: 20,
      child: Stack(
        children: [
          Positioned(
            left: animation.value * _width,
            bottom: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
