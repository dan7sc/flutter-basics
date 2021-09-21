import 'package:flutter/material.dart';

Map<String, Color> mapColor = {
  'red': Colors.red,
  'green': Colors.green,
  'blue': Colors.blue,
};

class Config {
  const Config({
    this.color,
    this.fontSize,
  });

  const Config.fallback()
      : color = 'red',
        fontSize = 12.0;

  final String? color;
  final double? fontSize;

  Config copyWith({
    String? color,
    double? fontSize,
  }) {
    return Config(
      color: color ?? this.color,
      fontSize: fontSize ?? this.fontSize,
    );
  }

  @override
  bool operator ==(other) {
    if (other.runtimeType != runtimeType) return false;

    final dynamic typedOther = other;
    return color == typedOther.color && fontSize == typedOther.fontSize;
  }

  @override
  int get hashCode => hashValues(color, fontSize);
}
