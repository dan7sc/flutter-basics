import 'package:flutter/material.dart';

import 'animated_box.dart';

class CurvedPosition extends StatefulWidget {
  @override
  _CurvedPositionState createState() => _CurvedPositionState();
}

class _CurvedPositionState extends State<CurvedPosition>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.easeInOut);
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
