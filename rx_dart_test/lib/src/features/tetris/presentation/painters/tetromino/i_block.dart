import 'dart:math';

import 'package:flutter/material.dart';

class IBlock extends CustomPainter {
  const IBlock({
    this.angle = 0,
    this.yOffset = 0,
    this.xOffset = 0,
    required this.width,
    required this.origin,
  });

  final double angle;
  final double yOffset;
  final double xOffset;
  final double width;
  final Point<double> origin;

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.teal
      ..style = PaintingStyle.fill;

    Path path;

    if (angle == 90 || angle == 270) {
      path = Path()
        ..moveTo(origin.x, origin.y)
        ..relativeLineTo(width, 0)
        ..relativeLineTo(0, width * 4)
        ..relativeLineTo(-width, 0)
        ..close();
    } else {
      path = Path()
        ..moveTo(origin.x, origin.y)
        ..relativeLineTo(width * 4, 0)
        ..relativeLineTo(0, width)
        ..relativeLineTo(-width * 4, 0)
        ..close();
    }

    canvas.translate(
      xOffset * width,
      yOffset * width,
    );

    canvas.drawPath(path, paint);
  }
}
