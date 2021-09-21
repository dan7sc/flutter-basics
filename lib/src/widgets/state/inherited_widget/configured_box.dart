import 'package:flutter/material.dart';

import 'config_class.dart';
import 'config_widget.dart';

class ConfiguredBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Config config = ConfigWidget.of(context);

    return Container(
      decoration: BoxDecoration(color: mapColor[config.color]),
      child: Text('Background color: ${config.color}'),
    );
  }
}
