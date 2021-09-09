import 'package:flutter/material.dart';

class GridViewExtent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 250,
      children: List.generate(10, (index) {
        return Container(
          alignment: Alignment.center,
          color: index % 2 == 0 ? Colors.orange: Colors.cyan,
          child: Text('Max Extent ${index + 1}'),
        );
      }),
    );
  }
}
