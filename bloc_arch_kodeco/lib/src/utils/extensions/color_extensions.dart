import 'package:flutter/material.dart';

extension MaterialColorExtension on Color {
  Map<int, Color> _toSwatch() {
    return {
      50: withOpacity(0.1),
      100: withOpacity(0.2),
      200: withOpacity(0.3),
      300: withOpacity(0.4),
      400: withOpacity(0.5),
      500: withOpacity(0.6),
      600: withOpacity(0.7),
      700: withOpacity(0.8),
      800: withOpacity(0.9),
      900: this,
    };
  }

  MaterialColor toMaterialColor() {
    return MaterialColor(
      value,
      _toSwatch(),
    );
  }

  MaterialAccentColor toMaterialAccentColor() {
    return MaterialAccentColor(
      // primary color is the current value of .this color
      value,
      _toSwatch(),
    );
  }
}
