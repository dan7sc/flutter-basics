import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 5,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: List.generate(
        10,
        (index) => Image.network(
          'https://picsum.photos/${50 + index * 10}',
        ),
      ),
    );
  }
}
