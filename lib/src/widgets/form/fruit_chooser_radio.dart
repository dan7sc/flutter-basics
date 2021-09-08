import 'package:flutter/material.dart';

class FruitChooserRadio extends StatefulWidget {
  @override
  _FruitChooserRadioState createState() => _FruitChooserRadioState();
}

class _FruitChooserRadioState extends State<FruitChooserRadio> {
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
        Column(
          children: Fruit.allFruits.map((fruit) {
            return Row(
              children: [
                Radio<Fruit>(
                  groupValue: _selectedFruit,
                  value: fruit,
                  onChanged: _handleOnChanged,
                ),
                Expanded(
                  child: Text(fruit.name),
                ),
              ],
            );
          }).toList(),
        ),
        Text(_selectedFruit != null ? _selectedFruit!.name : ''),
      ],
    );
  }
}

class Fruit {
  Fruit({required this.name});

  final String name;

  static List<Fruit> allFruits = [
    Fruit(name: 'Apple'),
    Fruit(name: 'Orange'),
    Fruit(name: 'Banana'),
    Fruit(name: 'Strawberry'),
  ];
}
