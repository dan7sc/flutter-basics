import 'package:flutter/material.dart';

class AnimatedBox extends AnimatedWidget {
  AnimatedBox({
    Key? key,
    required this.animation,
  }) : super(key: key, listenable: animation);

  final Animation<double> animation;
  final double _width = 400;
  final double _height = 300;
  static final _leftTween = Tween(begin: 0, end: 1.0);
  static final _bottomTween = CurveTween(curve: Curves.ease);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      height: _height,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all()),
      child: Stack(
        children: [
          Positioned(
            left: _leftTween.evaluate(animation) * _width,
            bottom: _bottomTween.evaluate(animation) * _height,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
