import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text('Elevated Button'),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.white70),
          ),
        ),
        CupertinoButton(
          onPressed: () {},
          child: Text('Cupertino Button'),
          color: Colors.greenAccent,
        ),
        TextButton(
          onPressed: () {},
          child: Text('Text Button'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.pink),
            foregroundColor: MaterialStateProperty.all(Colors.black87),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.map),
          iconSize: 50,
          tooltip: 'Map',
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.save),
          label: Text('Save'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orange),
            foregroundColor: MaterialStateProperty.all(Colors.black87),
          ),
        ),
        Placeholder(
          color: Colors.deepPurple,
          strokeWidth: 1,
          fallbackHeight: 50,
        ),
      ],
    );
  }
}
