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

class OBlock extends CustomPainter {
  final double width, xOffset, yOffset;
  final Point<double> origin;
  const OBlock({
    this.xOffset = 0,
    this.yOffset = 0,
    required this.width,
    required this.origin,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(origin.x, origin.y)
      ..lineTo(origin.x + width * 2, origin.y)
      ..lineTo(origin.x + width * 2, origin.y + width * 2)
      ..lineTo(origin.x, origin.y + width * 2)
      ..close();
    canvas.translate(xOffset * width, yOffset * width);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
