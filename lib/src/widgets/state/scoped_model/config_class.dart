import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

Map<String, Color> mapColor = {
  'red': Colors.red,
  'green': Colors.green,
  'blue': Colors.blue,
};

class Config extends Model {
  String _color = 'red';
  double _fontSize = 16.0;

  String get color => _color;
  double get fontSize => _fontSize;

  void setColor(String? color) {
    _color = color ?? _color;
    notifyListeners();
  }

  void increaseFontSize() {
    _fontSize += 1;
    notifyListeners();
  }
}
