import 'package:flutter/material.dart';

class GridViewCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(10, (index) {
        return Container(
          alignment: Alignment.center,
          color: index % 2 == 0 ? Colors.orange: Colors.cyan,
          child: Text('Fixed Count ${index + 1}'),
        );
      }),
    );
  }
}
