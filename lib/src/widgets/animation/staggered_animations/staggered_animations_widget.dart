import 'package:flutter/material.dart';

import 'animated_container_widget.dart';

class StaggeredAnimationsWidget extends StatefulWidget {
  @override
  _StaggeredAnimationsWidgetState createState() =>
      _StaggeredAnimationsWidgetState();
}

class _StaggeredAnimationsWidgetState extends State<StaggeredAnimationsWidget>
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
    return AnimatedContainerWidget(
      animation: controller,
    );
  }
}
