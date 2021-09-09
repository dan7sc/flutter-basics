import 'package:flutter/material.dart';

import 'radio_list_tile.dart';

class SwitchInListTile extends StatefulWidget {
  @override
  _SwitchInListTileState createState() => _SwitchInListTileState();
}

class _SwitchInListTileState extends State<SwitchInListTile> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CustomColor.values.length,
      itemBuilder: (context, index) {
        return SwitchListTile(
          selected: CustomColor.values[index].isSelected,
          title: Text('Color $index'),
          subtitle: Text('Description ${CustomColor.values[index].value}'),
          value: CustomColor.values[index].isSelected,
          activeColor: Colors.black.withOpacity(0.75),
          selectedTileColor: CustomColor.values[index].isSelected
            ? CustomColor.values[index].color
            : Colors.white,
          onChanged: (value) {
            setState(() {
              CustomColor.values[index].isSelected = value;
            });
          },
        );
      },
    );
  }
}
