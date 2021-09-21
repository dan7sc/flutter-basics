import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'config_class.dart';

class ScopedModelBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<Config>(
      builder: (BuildContext context, Widget? child, Config config) {
        return Container(
          decoration: BoxDecoration(color: mapColor[config.color]),
          child: Text('Background color: ${config.color}'),
        );
      },
    );
  }
}
