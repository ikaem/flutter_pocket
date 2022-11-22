import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rx_dart_test/src/features/tetris/utils/enums/piece.dart';

class Tetrimino {


  Tetrimino({
    required this.current,
    required this.origin,
    this.angle = 0,
    this.xOffset = 0,
    this.yOffset = 0,
  }) {

// here we set colors 
    if (current == Piece.I) color = Colors.teal;
    if (current == Piece.J) color = Colors.green;
    if (current == Piece.L) color = Colors.blue;
    if (current == Piece.S) color = Colors.pinkAccent;
    if (current == Piece.T) color = Colors.red;
    if (current == Piece.Z) color = Colors.blue;
    if (current == Piece.O) color = Colors.yellow;


  };


  final Piece current;
  final Point<double> origin;
  final double angle;
  final double xOffset;
  final double yOffset;
  Color? color;
}
