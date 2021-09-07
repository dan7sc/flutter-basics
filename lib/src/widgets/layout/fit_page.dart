import 'package:flutter/material.dart';

class FitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.spaceAround,
      children: [
        ImageBox(fit: BoxFit.fill),
        ImageBox(fit: BoxFit.contain),
        ImageBox(fit: BoxFit.cover),
        ImageBox(fit: BoxFit.fitWidth),
        ImageBox(fit: BoxFit.fitHeight),
        ImageBox(fit: BoxFit.none),
        ImageBox(fit: BoxFit.scaleDown),
      ],
    );
  }
}

class ImageBox extends StatelessWidget {
  const ImageBox({
    Key? key,
    this.boxWidth = 150,
    this.boxHeight = 170,
    this.imageWidth = 200,
    required this.fit,
  }) : super(key: key);

  final double boxWidth;
  final double boxHeight;
  final double imageWidth;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
      ),
      child: SizedBox(
        width: boxWidth,
        height: boxHeight,
        child: FittedBox(
          fit: fit,
          child: SizedBox(
            width: imageWidth,
            height: imageWidth,
            child: Image.network(
              'https://dummyimage.com/${imageWidth.toInt()}'
              '&text=${fit.toString().substring(7)}',
            ),
          ),
        ),
      ),
    );
  }
}
