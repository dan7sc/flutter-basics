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
    return ListView.builder(
      itemCount: CustomColor.values.length,
      itemBuilder: (context, index) {
        return RadioListTile<CustomColor>(
          selected: _selectedColor != null ? _selectedColor!.isSelected : false,
          title: Text('Color $index'),
          subtitle: Text('Description ${CustomColor.values[index].value}'),
          value: CustomColor.values[index],
          groupValue: _selectedColor,
          activeColor: Colors.black.withOpacity(0.75),
          selectedTileColor: CustomColor.values[index].isSelected ? CustomColor.values[index].color : Colors.white,
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
      },
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
