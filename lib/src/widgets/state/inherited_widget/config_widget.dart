import 'package:flutter/material.dart';

import 'config_class.dart';

class ConfigWidget extends InheritedWidget {
  const ConfigWidget({
    Key? key,
    required this.config,
    required Widget child,
  }) : super(key: key, child: child);

  final Config? config;

  static Config of(BuildContext context) {
    final ConfigWidget? configWidget =
        context.dependOnInheritedWidgetOfExactType();

    return configWidget!.config ?? const Config.fallback();
  }

  @override
  bool updateShouldNotify(ConfigWidget oldWidget) {
    return config != oldWidget.config;
  }
}
