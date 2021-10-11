import 'package:flutter/material.dart';

typedef BuilderFunc = Widget Function(BuildContext, Animation<double>);

class SimulationController extends StatefulWidget {
  SimulationController({
    Key? key,
    required this.simulation,
    required this.builder,
  }) : super(key: key);

  final Simulation simulation;
  final BuilderFunc builder;

  @override
  _SimulationControllerState createState() => _SimulationControllerState();
}

class _SimulationControllerState extends State<SimulationController>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      upperBound: 300,
      vsync: this,
    )
    ..addListener(() {
        setState(() {});
    })
    ..animateWith(widget.simulation);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, controller.view);
  }
}
