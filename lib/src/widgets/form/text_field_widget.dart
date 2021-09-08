import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            keyboardType: TextInputType.numberWithOptions(
              signed: true,
              decimal: true,
            ),
            textInputAction: TextInputAction.done,
            keyboardAppearance: Brightness.dark,
          ),
        ],
      ),
    );
  }
}
