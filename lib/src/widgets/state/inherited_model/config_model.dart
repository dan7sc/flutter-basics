import 'package:flutter/material.dart';

import 'config_class.dart';

class ConfigModel extends InheritedModel<String> {
  const ConfigModel({
    Key? key,
    required this.config,
    required Widget child,
  }) : super(key: key, child: child);

  final Config? config;

  static Config of(BuildContext context, String? aspect) {
    final ConfigModel? configModel =
        InheritedModel.inheritFrom(context, aspect: aspect);

    return configModel!.config ?? const Config.fallback();
  }

  @override
  bool updateShouldNotify(ConfigModel oldWidget) {
    return config != oldWidget.config;
  }

  @override
  bool updateShouldNotifyDependent(
    ConfigModel oldWidget, Set<String> dependencies) {
    return (config!.color != oldWidget.config!.color &&
            dependencies.contains('color')) ||
        (config!.fontSize != oldWidget.config!.fontSize &&
            dependencies.contains('fontSize'));
  }
}
