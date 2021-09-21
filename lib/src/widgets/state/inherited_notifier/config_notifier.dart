import 'package:flutter/material.dart';

import 'config_class.dart';

class ConfigNotifier extends InheritedNotifier<ValueNotifier<Config>> {
  const ConfigNotifier({
    Key? key,
    required notifier,
    required Widget child,
  }) : super(key: key, notifier: notifier, child: child);

  static Config of(BuildContext context) {
    final ConfigNotifier? configNotifier =
        context.dependOnInheritedWidgetOfExactType();

    return configNotifier!.notifier != null
        ? configNotifier.notifier!.value
        : const Config.fallback();
  }
}
