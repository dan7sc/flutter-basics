import 'package:flutter/material.dart';

import 'config_class.dart';
import 'config_updater.dart';
import 'config_notifier.dart';

class ConfiguredNotifierPage extends StatelessWidget {
  ConfiguredNotifierPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final ValueNotifier<Config> _notifier = ValueNotifier(
    Config(
      color: 'green',
      fontSize: 16,
    ),
  );

  void handleOnColorChanged(String? color) {
    _notifier.value = _notifier.value.copyWith(color: color);
  }

  void handleOnFontSizeIncreased() {
    Config oldConfig = _notifier.value;
    _notifier.value = oldConfig.copyWith(fontSize: oldConfig.fontSize! + 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return ConfigNotifier(
      notifier: _notifier,
      child: Column(
        children: [
          ConfigUpdater(
            onColorChanged: handleOnColorChanged,
            onFontSizeIncreased: handleOnFontSizeIncreased,
          ),
          Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: const EdgeInsets.all(8.0),
            child: child,
          ),
        ],
      ),
    );
  }
}
