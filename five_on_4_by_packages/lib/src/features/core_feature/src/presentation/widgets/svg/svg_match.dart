import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';
import 'package:flutter/material.dart';

class SVGMatch extends StatelessWidget {
  const SVGMatch({
    super.key,
    this.height,
    this.width,
    this.color,
  });

  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

// TODO this should be here
    // final Color color = theme.someSvgColor

    return SVGAsset(
      assetPath: "match.svg",
      height: height,
      width: width,
      color: color,
    );
  }
}
