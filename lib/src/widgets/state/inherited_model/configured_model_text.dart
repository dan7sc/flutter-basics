import 'package:flutter/material.dart';

import 'config_class.dart';
import 'config_model.dart';

class ConfiguredModelText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Config config = ConfigModel.of(context, null);

    return Text(
      'Font size: ${config.fontSize}',
      style: TextStyle(
        color: mapColor[config.color],
        fontSize: config.fontSize,
      ),
    );
  }
}
