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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? 'Animation Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ChainedTween(),
        ),
      ),
    );
  }
}
