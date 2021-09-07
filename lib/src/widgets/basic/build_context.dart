import 'package:flutter/material.dart';

class WithBuildContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column? column = context.findAncestorWidgetOfExactType();

    return column != null
      ? Text(column.children.length.toString())
      : Text('No ancestor column');
  }
}
