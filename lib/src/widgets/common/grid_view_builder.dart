import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 32,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          color: index % 2 == 0 ? Colors.orange: Colors.cyan,
          child: Text('Fixed Count ${index + 1}'),
        );
      },
    );
  }
}
