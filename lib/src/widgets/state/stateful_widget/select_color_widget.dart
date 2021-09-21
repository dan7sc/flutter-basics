import 'package:flutter/material.dart';

class SelectColorWidget extends StatefulWidget {
  @override
  _SelectColorWidgetState createState() => _SelectColorWidgetState();
}

class _SelectColorWidgetState extends State<SelectColorWidget> {
  final List<String> _colors = ['Red', 'Green', 'Blue'];
  String? _selectedColor;

  void handleOnChanged(value) {
    setState(() {
      _selectedColor = value.toString();
    });
  }

  @override
  void initState() {
    print('initState');
    super.initState();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void reassemble() {
    print('reassemble');
    super.reassemble();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
            value: _selectedColor,
            items: _colors.map((String color) {
              return DropdownMenuItem(
                value: color,
                child: Text(color),
              );
            }).toList(),
            onChanged: handleOnChanged,
          ),
          Text('Selected: ${_selectedColor ?? "unknown"}'),
        ],
      ),
    );
  }
}
