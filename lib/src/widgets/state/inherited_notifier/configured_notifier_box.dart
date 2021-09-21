import 'package:flutter/material.dart';

import 'config_class.dart';
import 'config_notifier.dart';

class ConfiguredNotifierBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Config config = ConfigNotifier.of(context);

    return Container(
      decoration: BoxDecoration(color: mapColor[config.color]),
      child: Text('Background color: ${config.color}'),
    );
  }
}
