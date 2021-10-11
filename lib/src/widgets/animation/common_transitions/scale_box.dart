import 'package:flutter/material.dart';

class ScaleBox extends StatelessWidget {
  ScaleBox({
    Key? key,
    required Animation<double> animation,
  })  : _animation = CurveTween(curve: Curves.ease).animate(animation),
        super(key: key);

  final Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      alignment: Alignment.centerLeft,
      child: Container(
        height: 150,
        decoration: BoxDecoration(color: Colors.red),
      ),
    );
  }
}
