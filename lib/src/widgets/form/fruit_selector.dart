import 'package:flutter/material.dart';

import 'fruit_chooser_radio.dart';

class FruitSelector extends StatefulWidget {
  @override
  _FruitSelectorState createState() => _FruitSelectorState();
}

class _FruitSelectorState extends State<FruitSelector> {
  List<Fruit> _selectedFruits = [];

  void Function(bool?)? _handleOnChanged(bool? selected, Fruit? fruit) {
    if (selected != null) {
      setState(() {
        if (selected) {
          _selectedFruits.add(fruit!);
        } else {
          _selectedFruits.remove(fruit!);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Select what you like'),
        Column(
          children: Fruit.allFruits.map((fruit) {
            return Row(
              children: [
                Checkbox(
                  value: _selectedFruits.contains(fruit),
                  onChanged: (selected) => _handleOnChanged(selected, fruit),
                ),
                Expanded(
                  child: Text(fruit.name),
                ),
              ],
            );
          }).toList(),
        ),
        Text(_selectedFruits.map((fruit) => fruit.name).join(', ')),
      ],
    );
  }
}
