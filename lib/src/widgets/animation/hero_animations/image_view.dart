import 'package:flutter/material.dart';

import 'image_hero.dart';

class ImageView extends StatelessWidget {
  ImageView({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Row(
        children: [
          ImageHero(
            width: 50,
            height: 50,
            imageUrl: imageUrl,
          ),
          Expanded(
            child: Text('Image Detail'),
          ),
        ],
      ),
    );
  }
}
