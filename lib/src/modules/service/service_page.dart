import 'package:flutter/material.dart';
import 'package:flutter_basics/src/widgets/widgets.dart';

class ServicePage extends StatefulWidget {
  ServicePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? 'Service Page'),
      ),
      body: RestServicePage(),
    );
  }
}
