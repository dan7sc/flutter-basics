import 'package:flutter/material.dart';

import 'config_class.dart';
import 'config_updater.dart';
import 'config_widget.dart';

class ConfiguredPage extends StatefulWidget {
  ConfiguredPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  _ConfiguredPagetState createState() => _ConfiguredPagetState();
}

class _ConfiguredPagetState extends State<ConfiguredPage> {
  Config _config = Config(color: 'green', fontSize: 16);

  void handleOnColorChanged(String? color) {
    setState(() {
        _config = _config.copyWith(color: color);
    });
  }

  void handleOnFontSizeIncreased() {
    setState(() {
        _config = _config.copyWith(fontSize: _config.fontSize! + 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ConfigWidget(
      config: _config,
      child: Column(
        children: [
          ConfigUpdater(
            onColorChanged: handleOnColorChanged,
            onFontSizeIncreased: handleOnFontSizeIncreased,
          ),
          Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: const EdgeInsets.all(8.0),
            child: widget.child,
          ),
        ],
      ),
    );
  }
}
