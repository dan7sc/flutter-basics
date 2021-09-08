import 'package:flutter/material.dart';

class NameInputForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Name',
        ),
        validator: (value) {
          if(value == null || value.isEmpty) {
            return 'Name is required.';
          } else if (value.length < 6) {
            return 'Minimum length is 6.';
          } else {
            return null;
          }
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}
