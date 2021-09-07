import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.rotationZ(0.1),
      margin: EdgeInsets.all(32),
      constraints: BoxConstraints.loose(Size(400, 400)),
      width: 300,
      height: 300,
      foregroundDecoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://picsum.photos/100'),
        ),
      ),
      color: Colors.red.shade100,
      padding: EdgeInsets.all(16),
      alignment: Alignment.bottomRight,
      child: Text(
        'Hello World',
        textScaleFactor: 3,
      ),
    );
  }
}
