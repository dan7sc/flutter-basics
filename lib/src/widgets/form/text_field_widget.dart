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
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gapPadding: 2.5,
              ),
            ),
          ),
          SizedBox(height: 8),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.monetization_on),
              prefixText: 'Pay ',
              prefixStyle: TextStyle(fontStyle: FontStyle.italic),
              suffixText: '.00',
            ),
          ),
          SizedBox(height: 8),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              hintText: 'Email address for validation',
              helperText: 'For receiving validation emails',
              counterText: '10',
            ),
          ),
          SizedBox(height: 8),
          TextField(
            maxLength: 10,
            maxLengthEnforcement: MaxLengthEnforcement.none,
          ),
          SizedBox(height: 8),
          TextField(
            inputFormatters: [
            TextInputFormatter.withFunction(
                (oldValue, newValue) =>
                    newValue.copyWith(
                  text: newValue.text.toUpperCase(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
