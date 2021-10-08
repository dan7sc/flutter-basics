import 'package:flutter/material.dart';

import 'scale_box.dart';

class TransitionPage extends StatefulWidget {
  @override
  _TransitionPageState createState() =>
      _TransitionPageState();
}

class _TransitionPageState extends State<TransitionPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 8),
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
    return ScaleBox(
      animation: controller,
    );
  }
}
