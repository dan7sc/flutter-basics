import 'package:flutter/material.dart';

class GridViewCountWithImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 4 / 3,
      children: List.generate(10, (index) {
        return Image.network('https://picsum.photos/400/${300 + index}');
      }),
    );
  }
}
