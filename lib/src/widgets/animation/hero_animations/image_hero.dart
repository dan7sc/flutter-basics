import 'package:flutter/material.dart';

class ImageHero extends StatelessWidget {
  ImageHero({
    Key? key,
    required this.imageUrl,
    required this.width,
    required this.height,
  }) : super(key: key);

  final String imageUrl;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Hero(
        tag: imageUrl,
        child: Image.network(imageUrl),
      ),
    );
  }
}
