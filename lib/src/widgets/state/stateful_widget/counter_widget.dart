import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 0;

  void handleCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CounterButton(handleCount),
          CounterText(_count),
        ],
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  CounterText(this.count);

  final int? count;

  @override
  Widget build(BuildContext context) {
    return Text('Value: ${count ?? ""}');
  }
}

class CounterButton extends StatelessWidget {
  CounterButton(this.onPressed);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('+'),
      onPressed: onPressed,
    );
  }
}
