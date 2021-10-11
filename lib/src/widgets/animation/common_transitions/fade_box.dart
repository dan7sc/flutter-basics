import 'package:flutter/material.dart';

class FadeBox extends StatelessWidget {
  FadeBox({
    Key? key,
    required Animation<double> animation,
  })  : _animation = CurveTween(curve: Curves.ease).animate(animation),
        super(key: key);

  final Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        height: 150,
        decoration: BoxDecoration(color: Colors.purple),
      ),
    );
  }
}
