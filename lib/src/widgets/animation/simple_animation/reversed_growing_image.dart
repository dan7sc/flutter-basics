import 'package:flutter/material.dart';

class ReversedGrowingImage extends StatefulWidget {
  @override
  _ReversedGrowingImageState createState() => _ReversedGrowingImageState();
}

class _ReversedGrowingImageState extends State<ReversedGrowingImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      lowerBound: 0,
      upperBound: 300,
      duration: Duration(seconds: 10),
      vsync: this,
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        }
      })
      ..forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: controller.value,
      height: controller.value,
      child: Image.network('https://picsum.photos/400'),
    );
  }
}
