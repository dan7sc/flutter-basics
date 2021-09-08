import 'package:flutter/material.dart';

import 'fruit_chooser_radio.dart';

class FruitChooserDropdown extends StatefulWidget {
  @override
  _FruitChooserDropdownState createState() => _FruitChooserDropdownState();
}

class _FruitChooserDropdownState extends State<FruitChooserDropdown> {
  Fruit? _selectedFruit;

  void Function(Fruit?)? _handleOnChanged(Fruit? fruit) {
    setState(() {
      _selectedFruit = fruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Choose a fruit'),
        DropdownButton(
          value: _selectedFruit,
          items: Fruit.allFruits.map((fruit) {
            return DropdownMenuItem(
              value: fruit,
              child: Text(fruit.name),
            );
          }).toList(),
          onChanged: _handleOnChanged,
          hint: Text('Select a fruit'),
        ),
        Text(_selectedFruit != null ? _selectedFruit!.name : ''),
      ],
    );
  }
}
