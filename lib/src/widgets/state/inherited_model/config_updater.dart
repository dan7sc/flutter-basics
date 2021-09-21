import 'package:flutter/material.dart';

import 'config_class.dart';
import 'config_model.dart';

typedef SetColorCallback = void Function(String? color);

class ConfigUpdater extends StatelessWidget {
  const ConfigUpdater({
    required this.onColorChanged,
    required this.onFontSizeIncreased,
  });

  static const List<String> _colors = [
    'red',
    'green',
    'blue',
  ];
  final SetColorCallback onColorChanged;
  final VoidCallback onFontSizeIncreased;

  @override
  Widget build(BuildContext context) {
    Config config = ConfigModel.of(context, null);

    return Column(
      children: [
        DropdownButton(
          value: config.color,
          items: _colors.map((color) {
            return DropdownMenuItem(
              value: color,
              child: Text(color),
            );
          }).toList(),
          onChanged: onColorChanged,
        ),
        ElevatedButton(
          child: Text('Increase font size'),
          onPressed: onFontSizeIncreased,
        ),
      ],
    );
  }
}
