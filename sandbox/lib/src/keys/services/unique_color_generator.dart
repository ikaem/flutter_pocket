import 'dart:math';

import 'package:flutter/material.dart';

class UniqueCOlorGenerator {
  static List colorOptions = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.indigo,
    Colors.amber,
    Colors.black,
  ];

  static Random random = Random();

  static Color getColor() {
    if (colorOptions.isEmpty) {
      final a = random.nextInt(256);
      final r = random.nextInt(256);
      final g = random.nextInt(256);
      final b = random.nextInt(256);

      return Color.fromARGB(a, r, g, b);
    }

    final currentColorsLenght = colorOptions.length;
    final randomColor =
        colorOptions.removeAt(random.nextInt(currentColorsLenght));

    return randomColor;
  }
}
