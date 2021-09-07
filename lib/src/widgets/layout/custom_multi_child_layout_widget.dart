import 'package:flutter/material.dart';

class GrowingSizeLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    int index = 0;
    Size childSize = layoutChild(index, BoxConstraints.loose(size));
    Offset offset = Offset.zero;
    positionChild(index, offset);
    index++;

    while (hasChild(index)) {
      double sizeFactor = 1.0 + index * 0.1;
      double offsetFactor = index * 10.0;
      childSize = layoutChild(
        index,
        BoxConstraints.tight(
          Size(
            childSize.width * sizeFactor,
            childSize.height * sizeFactor,
          ),
        ),
      );
      offset = offset.translate(offsetFactor, offsetFactor);
      positionChild(index, offset);
      index++;
    }
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    return false;
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return constraints.constrain(Size(400, 400));
  }
}

class CustomMultiChildLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomMultiChildLayout(
      delegate: GrowingSizeLayoutDelegate(),
      children: List.generate(
        6,
        (index) => LayoutId(
          id: index,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
            ),
            child: SizedBox(
              width: 70,
              height: 70,
              child: Image.network(
                'https://dummyimage.com/${50 + index * 10}',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
