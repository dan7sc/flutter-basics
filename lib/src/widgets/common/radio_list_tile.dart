import 'package:flutter/material.dart';

class RadioInListTile extends StatefulWidget {
  @override
  _RadioInListTileState createState() => _RadioInListTileState();
}

class _RadioInListTileState extends State<RadioInListTile> {
  CustomColor? _selectedColor;
  CustomColor? _oldSelectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: CustomColor.values.map((color) {
        return RadioListTile<CustomColor>(
          selected: color.isSelected,
          title: Text('Color ${color.value}'),
          subtitle: Text('Description ${color.value}'),
          value: color,
          groupValue: _selectedColor,
          activeColor: Colors.black.withOpacity(0.75),
          selectedTileColor: color.color,
          onChanged: (value) {
            setState(() {
              if(_selectedColor != null) {
                _oldSelectedColor = _selectedColor;
                _oldSelectedColor!.isSelected = !_selectedColor!.isSelected;
              }
              _selectedColor = value!;
              _selectedColor!.isSelected = !value.isSelected;
            });
          },
        );
      }).toList(),
    );
  }
}

class CustomColor {
  CustomColor({
    required this.value,
    required this.color,
  });

  final String value;
  final Color color;
  bool isSelected = false;

  static List<CustomColor> values = [
    CustomColor(value: 'red', color: Colors.red),
    CustomColor(value: 'green', color: Colors.green),
    CustomColor(value: 'blue', color: Colors.blue),
    CustomColor(value: 'pink', color: Colors.pink),
    CustomColor(value: 'yellow', color: Colors.yellow),
    CustomColor(value: 'purple', color: Colors.purple),
    CustomColor(value: 'grey', color: Colors.grey),
    CustomColor(value: 'cyan', color: Colors.cyan),
    CustomColor(value: 'orange', color: Colors.orange),
  ];
}
