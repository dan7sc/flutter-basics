import 'package:flutter/material.dart';

import 'config_class.dart';
import 'config_widget.dart';

class ConfiguredText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Config config = ConfigWidget.of(context);

    return Text(
      'Font size: ${config.fontSize}',
      style: TextStyle(
        color: mapColor[config.color],
        fontSize: config.fontSize,
      ),
    );
  }
}
