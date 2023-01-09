import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SVGAsset extends StatelessWidget {
  const SVGAsset({
    super.key,
    required this.assetPath,
    this.width,
    this.height,
    this.color,
  });

  final String assetPath;
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svg/$assetPath',
      width: width,
      height: height,
      color: color,
    );
  }
}
