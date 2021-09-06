import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$_value'),
        SizedBox(width: 20),
        ElevatedButton(
          child: Text('+'),
          onPressed: () {
            setState(() {
              _value++;
            });
          },
        ),
      ],
    );
  }
}
