import 'package:flutter/material.dart';
import 'package:flutter_basics/src/widgets/widgets.dart';

class StatePage extends StatefulWidget {
  StatePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _StatePageState createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? 'Service Page'),
      ),
      body: ConfiguredPage(
      child: Center(
        child: Column(
            children: [
              ConfiguredText(),
              ConfiguredBox(),
            ],
          ),
      ),
      ),
    );
  }
}
