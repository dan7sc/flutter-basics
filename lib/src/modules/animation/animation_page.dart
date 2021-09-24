import 'package:flutter/material.dart';
import 'package:flutter_basics/src/widgets/widgets.dart';

class AnimationPage extends StatefulWidget {
  AnimationPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      value: 100,
      lowerBound: 0,
      upperBound: 300,
      duration: Duration(seconds: 8),
      vsync: this,
    )
    ..forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? ''),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: AnimatedImage(
            animation: animation,
          ),
        ),
      ),
    );
  }
}
