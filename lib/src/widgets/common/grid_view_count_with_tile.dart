import 'package:flutter/material.dart';

class GridViewCountWithTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        GridTile(
          child: Center(child: Text('Simple')),
        ),
        GridTile(
          child: Center(child: Text('Header & Footer')),
          header: GridTileBar(
            title: Text('Header'),
            backgroundColor: Colors.red,
          ),
          footer: GridTileBar(
            title: Text('Footer'),
            subtitle: Text('Description'),
            backgroundColor: Colors.blue,
          ),
        ),
      ],
    );
  }
}
