import 'package:flutter/material.dart';

import 'fruit_chooser_radio.dart';

class FruitChooseFilterChip extends StatefulWidget {
  @override
  _FruitChooseFilterChipState createState() => _FruitChooseFilterChipState();
}

class _FruitChooseFilterChipState extends State<FruitChooseFilterChip> {
  List<Fruit> _selectedFruits = [];

  _handleOnSelected(bool selected, Fruit fruit) {
    setState(() {
        if(selected) {
          _selectedFruits.add(fruit);
        } else {
          _selectedFruits.remove(fruit);
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Fruit filter chip'),
        Wrap(
          spacing: 5,
          children: Fruit.allFruits.map((fruit) {
            return FilterChip(
              label: Text(fruit.name),
              selected: _selectedFruits.contains(fruit),
              onSelected: (selected) => _handleOnSelected(selected, fruit),
              selectedColor: Colors.blue.shade200,
            );
          }).toList(),
        ),
        Text(_selectedFruits.map((fruit) => fruit.name).join(', ')),
      ],
    );
  }
}
