import 'package:bloc_arch_kodeco/src/utils/extensions/color_extensions.dart';
import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor get black => _blackPrimaryColor.toMaterialColor();
  static MaterialAccentColor get green =>
      _greenPrimaryColor.toMaterialAccentColor();
  static Color get grey => const Color(0xFFF2F6FA);

  static const Color _blackPrimaryColor = Color(0xFF333333);
  static const Color _greenPrimaryColor = Color(0xFF158443);
}
