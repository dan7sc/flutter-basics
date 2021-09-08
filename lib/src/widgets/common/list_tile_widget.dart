import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Title $index'),
          subtitle: Text('Title $index'),
          leading: Icon(Icons.shop),
          trailing: Icon(Icons.arrow_right),
        );
      },
    );
  }
}
