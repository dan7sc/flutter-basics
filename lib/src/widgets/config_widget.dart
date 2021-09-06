import 'package:flutter/material.dart';

class ConfigWidget extends InheritedWidget {
  const ConfigWidget({
    Key? key,
    required this.config,
    required Widget? child,
  })  : assert(config != null),
        assert(child != null),
        super(key: key, child: child as Widget);

  final String? config;

  static String of(BuildContext context) {
    final ConfigWidget? configWidget =
        context.dependOnInheritedWidgetOfExactType();

    return configWidget?.config ?? '';
  }

  @override
  bool updateShouldNotify(ConfigWidget oldWidget) {
    return config != oldWidget.config;
  }
}

class ConfigUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Data is ${ConfigWidget.of(context)}');
  }
}
