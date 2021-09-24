import 'package:flutter/material.dart';

class GrowingImage extends StatefulWidget {
  @override
  _GrowingImageState createState() => _GrowingImageState();
}

class _GrowingImageState extends State<GrowingImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      lowerBound: 0,
      upperBound: 400,
      duration: Duration(seconds: 10),
      vsync: this,
    )
      ..addListener(() {
        setState(() {});
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
