import 'package:flutter/material.dart';

import 'animated_box.dart';

class SimultaneousAnimationsWidget extends StatefulWidget {
  @override
  _SimultaneousAnimationsWidgetState createState() => _SimultaneousAnimationsWidgetState();
}

class _SimultaneousAnimationsWidgetState extends State<SimultaneousAnimationsWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBox(
      animation: controller,
    );
  }
}
