import 'package:flutter/material.dart';

import 'fruit_chooser_radio.dart';

class FruitChooseChoiceChip extends StatefulWidget {
  @override
  _FruitChooseChoiceChipState createState() => _FruitChooseChoiceChipState();
}

class _FruitChooseChoiceChipState extends State<FruitChooseChoiceChip> {
  Fruit? _selectedFruit;

  _handleOnSelected(bool selected, Fruit fruit) {
    setState(() {
      _selectedFruit = selected ? fruit : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Fruit Choice chip'),
        Wrap(
          spacing: 5,
          children: Fruit.allFruits.map((fruit) {
            return ChoiceChip(
              label: Text(fruit.name),
              selected: _selectedFruit == fruit,
              onSelected: (selected) => _handleOnSelected(selected, fruit),
              selectedColor: Colors.red.shade200,
            );
          }).toList(),
        ),
        Text(_selectedFruit != null ? _selectedFruit!.name : ''),
      ],
    );
  }
}
