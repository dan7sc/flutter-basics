import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'config_class.dart';
import 'scoped_model_box.dart';
import 'scoped_model_text.dart';
import 'scoped_model_updater.dart';

class ScopedModelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: Config(),
      child: Column(
        children: [
          ScopedModelUpdater(),
          Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ScopedModelText(),
                ScopedModelBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
