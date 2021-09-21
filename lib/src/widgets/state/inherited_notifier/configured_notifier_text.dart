import 'package:flutter/material.dart';

import 'config_class.dart';
import 'config_notifier.dart';

class ConfiguredNotifierText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Config config = ConfigNotifier.of(context);

    return Text(
      'Font size: ${config.fontSize}',
      style: TextStyle(
        color: mapColor[config.color],
        fontSize: config.fontSize,
      ),
    );
  }
}
