import 'package:flutter/material.dart';

class CheckboxInListTile extends StatefulWidget {
  @override
  _CheckboxInListTileState createState() => _CheckboxInListTileState();
}

class _CheckboxInListTileState extends State<CheckboxInListTile> {
  bool _value = false;
  List<bool> _valueList = List.generate(20, (index) => false);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        _value = _valueList[index];
        return CheckboxListTile(
          title: Text('Checkbox $index'),
          subtitle: Text('Description $index'),
          value: _value,
          secondary: Icon(_value ? Icons.monetization_on : Icons.money_off),
          onChanged: (value) {
            setState(() {
              _valueList[index] = value!;
            });
          },
        );
      },
    );
  }
}
