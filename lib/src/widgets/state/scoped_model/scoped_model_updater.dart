import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'config_class.dart';

class ScopedModelUpdater extends StatelessWidget {
  static const List<String> _colors = [
    'red',
    'green',
    'blue',
  ];

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<Config>(
      builder: (BuildContext context, Widget? child, Config config) {
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
            onChanged: config.setColor,
          ),
          ElevatedButton(
            child: Text('Increase font size'),
            onPressed: config.increaseFontSize,
          ),
        ],
      );
    });
  }
}
