import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'config_class.dart';

class ScopedModelText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<Config>(
      builder: (BuildContext context, Widget? child, Config config) {
        return Text(
          'Font size: ${config.fontSize}',
          style: TextStyle(
            color: mapColor[config.color],
            fontSize: config.fontSize,
          ),
        );
      },
    );
  }
}
