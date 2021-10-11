import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

import 'simulation_controller.dart';

class SimulationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SpringSimulation _springSimulation = SpringSimulation(
        SpringDescription.withDampingRatio(
          mass: 1.0,
          stiffness: 50,
          ratio: 2.0,
        ),
        0.0,
        300.0,
        10.0)
      ..tolerance = Tolerance(
        distance: 0.01,
        velocity: double.infinity,
      );

    return SimulationController(
      simulation: _springSimulation,
      builder: (context, view) {
        return Stack(
          children: [
            Positioned(
              left: 150,
              top: view.value,
              width: 20,
              height: 20,
              child: Container(
                color: Colors.redAccent,
              ),
            ),
          ],
        );
      },
    );
  }
}
