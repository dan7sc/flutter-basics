import 'package:flutter/material.dart';

import 'config_class.dart';
import 'config_model.dart';

class ConfiguredModelBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Config config = ConfigModel.of(context, null);

    return Container(
      decoration: BoxDecoration(color: mapColor[config.color]),
      child: Text('Background color: ${config.color}'),
    );
  }
}
