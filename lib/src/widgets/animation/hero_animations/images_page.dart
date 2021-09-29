import 'package:flutter/material.dart';

import 'image_hero.dart';
import 'image_view.dart';

class ImagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(6, (int index) {
        String imageUrl = 'https://picsum.photos/300?random&$index';
        return GridTile(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return ImageView(imageUrl: imageUrl);
                }),
              );
            },
            child: ImageHero(
              imageUrl: imageUrl,
              width: 300,
              height: 300,
            ),
          ),
        );
      }),
    );
  }
}
