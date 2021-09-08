import 'package:flutter/material.dart';

class NameInputSwitch extends StatefulWidget {
  @override
  _NameInputSwitchState createState() => _NameInputSwitchState();
}

class _NameInputSwitchState extends State<NameInputSwitch> {
  bool _userCustomName = false;

  _buildNameInput() {
    return TextField(
      decoration: InputDecoration(labelText: 'Name'),
    );
  }

  _buildToggle() {
    return Row(children: [
      Switch(
        value: _userCustomName,
        onChanged: (value) {
          setState(() {
            _userCustomName = value;
          });
        },
        activeColor: Colors.green,
        inactiveThumbColor: Colors.grey.shade200,
      ),
      Expanded(
        child: Text('User custom name'),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _userCustomName
      ? [_buildToggle(), _buildNameInput()]
      : [_buildToggle()],
    );
  }
}
