import 'package:flutter/material.dart';

class Unconstraint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: UnconstrainedBox(
        constrainedAxis: Axis.horizontal,
        child: Image.network('https://picsum.photos/200/300'),
      ),
    );
  }
}
