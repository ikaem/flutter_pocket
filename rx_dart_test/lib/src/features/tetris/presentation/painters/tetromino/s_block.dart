// Copyright (c) 2022 Razeware LLC
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the 'Software'), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical
// or instructional purposes related to programming, coding, application
// development, or information technology.  Permission for such use, copying,
// modification, merger, publication, distribution, sublicensing, creation
// of derivative works, or sale is expressly withheld.
// THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
import 'dart:math';

import 'package:flutter/material.dart';

class SBlock extends CustomPainter {
  final double angle, xOffset, yOffset;
  final double width;
  final Point<double> origin;
  const SBlock(
      {this.angle = 0,
      this.yOffset = 0,
      this.xOffset = 0,
      required this.width,
      required this.origin});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.pinkAccent
      ..style = PaintingStyle.fill;
    Path path;
    if (angle == 90) {
      path = Path()
        ..moveTo(origin.x, origin.y)
        ..relativeLineTo(width, 0)
        ..relativeLineTo(0, width)
        ..relativeLineTo(width, 0)
        ..relativeLineTo(0, width * 2)
        ..relativeLineTo(-width, 0)
        ..relativeLineTo(0, -width)
        ..relativeLineTo(-width, 0)
        ..close();
    } else if (angle == 180) {
      path = Path()
        ..moveTo(origin.x + width, origin.y + width)
        ..relativeLineTo(width * 2, 0)
        ..relativeLineTo(0, width)
        ..relativeLineTo(-width, 0)
        ..relativeLineTo(0, width)
        ..relativeLineTo(-width * 2, 0)
        ..relativeLineTo(0, -width)
        ..relativeLineTo(width, 0)
        ..close();
    } else if (angle == 270) {
      path = Path()
        ..moveTo(origin.x, origin.y)
        ..relativeLineTo(width, 0)
        ..relativeLineTo(0, width)
        ..relativeLineTo(width, 0)
        ..relativeLineTo(0, width * 2)
        ..relativeLineTo(-width, 0)
        ..relativeLineTo(0, -width)
        ..relativeLineTo(-width, 0)
        ..close();
    } else {
      path = Path()
        ..moveTo(origin.x + width, origin.y)
        ..relativeLineTo(width * 2, 0)
        ..relativeLineTo(0, width)
        ..relativeLineTo(-width, 0)
        ..relativeLineTo(0, width)
        ..relativeLineTo(-width * 2, 0)
        ..relativeLineTo(0, -width)
        ..relativeLineTo(width, 0)
        ..close();
    }
    canvas.translate(xOffset * width, yOffset * width);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
