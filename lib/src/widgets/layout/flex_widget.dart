import 'package:flutter/material.dart';

class FlexWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LimitedBox(
          maxHeight: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.network('https://picsum.photos/50'),
              Image.network('https://picsum.photos/70'),
              Image.network('https://picsum.photos/90'),
            ],
          ),
        ),
        LimitedBox(
          maxHeight: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Image.network('https://picsum.photos/50'),
              ),
              Image.network('https://picsum.photos/40'),
              Flexible(
                child: Image.network('https://picsum.photos/50'),
              ),
              Expanded(
                flex: 2,
                child: Image.network('https://picsum.photos/90'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
