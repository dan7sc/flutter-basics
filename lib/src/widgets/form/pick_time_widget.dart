import 'package:flutter/material.dart';

class PickTimeWidget extends StatefulWidget {
  @override
  _PickTimeWidgetState createState() => _PickTimeWidgetState();
}

class _PickTimeWidgetState extends State<PickTimeWidget> {
  TimeOfDay _selectedTime = TimeOfDay.now();
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          labelText: 'Time',
          suffix: IconButton(
              icon: Icon(Icons.access_time),
              onPressed: () {
                showTimePicker(
                  context: context,
                  initialTime: _selectedTime,
                ).then((selectedTime) {
                  if (selectedTime != null) {
                    _selectedTime = selectedTime;
                    _controller.text = _selectedTime.format(context);
                  }
                });
              }),
        ),
      ),
    );
  }
}
