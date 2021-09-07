import 'package:flutter/material.dart';

class Constraints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100,
          height: 50,
          child: Text('SizedBox'),
        ),
        SizedBox(
          width: 60,
          height: 60,
          child: SizedBox.shrink(
            child: Image.network('https://picsum.photos/50'),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 50,
            maxWidth: 50,
          ),
          child: Text('ConstrainedBox'),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 200,
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 200,
            ),
            child: Image.network('https://picsum.photos/300'),
          ),
        ),
      ],
    );
  }
}
