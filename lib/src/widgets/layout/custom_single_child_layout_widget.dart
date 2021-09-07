import 'package:flutter/material.dart';

class FixedPositionLayoutDelegate extends SingleChildLayoutDelegate {
  @override
  bool shouldRelayout(SingleChildLayoutDelegate oldDelegate) {
    return false;
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return constraints.constrain(Size(300, 300));
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return constraints.tighten(width: 300, height: 300);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(50, 50);
  }
}

class CustomSingleChildLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomSingleChildLayout(
      delegate: FixedPositionLayoutDelegate(),
      child: Image.network('https://picsum.photos/100'),
    );
  }
}
