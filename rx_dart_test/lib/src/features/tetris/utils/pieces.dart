// TDO this actually returns a list inf integes
// and then i guess each of elements has 4 spaces
// so we get coordiantes of those 4 pieces

import 'package:flutter/material.dart';
import 'package:rx_dart_test/src/features/tetris/domain/models/tetrimino.dart';
import 'package:rx_dart_test/src/features/tetris/utils/enums/piece.dart';

// how does this work
bool checkIsSetPieceAtTheTop(
  List<Color> setPieces,
  int colCount,
) {
// TODO prođi sve ovo da vidiš kako to uopće radi
  for (int i = 0; i < colCount; i++) {
    // so we go through all columns
    // it should be horizontal
    // if a set piece is not white at some column, we are at the top
    if (setPieces[i] != Colors.white) return true;
  }
  return false;
}

List<int> mapToGridIndex(
  Tetrimino piece,
  int extent,
  int colCount,
) {
  // we just normallize each piece here - its position i guess
  final normalizedHorizontal =
      (piece.xOffset * extent + piece.origin.x) ~/ extent;

  final startIndex = colCount * piece.yOffset.toInt() + normalizedHorizontal;

  switch (piece.current) {
    case Piece.I:
      return _getIBlockCoordinates(
        startIndex,
        colCount,
        piece.angle,
      );

    case Piece.J:
      return _getJBlockCoordinates(startIndex, colCount, piece.angle);
    case Piece.L:
      return _mapLBlock(startIndex, colCount, piece.angle);
    case Piece.O:
      return _mapOBlock(startIndex, colCount, piece.angle);
    case Piece.S:
      return _mapSBlock(startIndex, colCount, piece.angle);
    case Piece.T:
      return _mapTBlock(startIndex, colCount, piece.angle);
    case Piece.Z:
      return _mapZBlock(startIndex, colCount, piece.angle);

    default:
      return [];
  }
}

List<int> _getIBlockCoordinates(
  int startIndex,
  int colCount,
  double angle,
) {
  if (angle == 90 || angle == 270) {
    // this should be vertical
    return [
      startIndex,
      // this i get
      startIndex + colCount,
      startIndex + 2 * colCount,
      startIndex + 3 * colCount,
    ];
  } else {
    // this should be horizontal
    return [
      startIndex,
      startIndex + 1,
      startIndex + 2,
      startIndex + 3,
    ];
  }
}

List<int> _getJBlockCoordinates(
  int startIndex,
  int colCount,
  double angle,
) {
  if (angle == 90) {
    return [
      startIndex,
      startIndex + 1,
      startIndex + colCount,
      startIndex + 2 * colCount
    ];
  }
  if (angle == 180) {
    return [
      startIndex + colCount,
      startIndex + colCount + 1,
      startIndex + colCount + 2,
      startIndex + 2 * colCount + 2
    ];
  }
  if (angle == 270) {
    return [
      startIndex + 1,
      startIndex + colCount + 1,
      startIndex + 2 * colCount + 1,
      startIndex + 2 * colCount,
    ];
  }
  return [
    startIndex,
    startIndex + colCount,
    startIndex + colCount + 1,
    startIndex + colCount + 2,
  ];
}

List<int> _mapLBlock(int startIndex, int colCount, double angle) {
  if (angle == 90) {
    return [
      startIndex,
      startIndex + 1,
      startIndex + colCount,
      startIndex + 2 * colCount
    ];
  }
  if (angle == 180) {
    return [
      startIndex + colCount,
      startIndex + colCount + 1,
      startIndex + colCount + 2,
      startIndex + 2 * colCount + 2
    ];
  }
  if (angle == 270) {
    return [
      startIndex + 1,
      startIndex + colCount + 1,
      startIndex + 2 * colCount + 1,
      startIndex + 2 * colCount,
    ];
  }
  return [
    startIndex,
    startIndex + colCount,
    startIndex + colCount + 1,
    startIndex + colCount + 2,
  ];
}

List<int> _mapOBlock(int startIndex, int colCount, double angle) {
  return [
    startIndex,
    startIndex + 1,
    startIndex + colCount + 1,
    startIndex + colCount
  ];
}

List<int> _mapSBlock(int startIndex, int colCount, double angle) {
  if (angle == 90) {
    return [
      startIndex,
      startIndex + colCount,
      startIndex + colCount + 1,
      startIndex + 2 * colCount + 1
    ];
  }
  if (angle == 180) {
    return [
      startIndex + colCount + 1,
      startIndex + colCount + 2,
      startIndex + 2 * colCount + 1,
      startIndex + 2 * colCount
    ];
  }
  if (angle == 270) {
    return [
      startIndex,
      startIndex + colCount,
      startIndex + colCount + 1,
      startIndex + 2 * colCount + 2,
    ];
  }
  return [
    startIndex + 1,
    startIndex + 2,
    startIndex + colCount,
    startIndex + colCount + 1,
  ];
}

List<int> _mapTBlock(int startIndex, int colCount, double angle) {
  if (angle == 90) {
    return [
      startIndex,
      startIndex + colCount,
      startIndex + colCount + 1,
      startIndex + 2 * colCount
    ];
  }
  if (angle == 180) {
    return [
      startIndex + colCount,
      startIndex + colCount + 1,
      startIndex + colCount + 2,
      startIndex + 2 * colCount + 1
    ];
  }
  if (angle == 270) {
    return [
      startIndex + 1,
      startIndex + colCount + 1,
      startIndex + colCount,
      startIndex + 2 * colCount + 1,
    ];
  }
  return [
    startIndex + 1,
    startIndex + colCount,
    startIndex + colCount + 1,
    startIndex + colCount + 2,
  ];
}

List<int> _mapZBlock(int startIndex, int colCount, double angle) {
  if (angle == 90) {
    return [
      startIndex + 1,
      startIndex + colCount,
      startIndex + colCount + 1,
      startIndex + 2 * colCount
    ];
  }
  if (angle == 180) {
    return [
      startIndex + colCount,
      startIndex + colCount + 1,
      startIndex + 2 * colCount + 1,
      startIndex + 2 * colCount + 2
    ];
  }
  if (angle == 270) {
    return [
      startIndex + 1,
      startIndex + colCount + 1,
      startIndex + 2 * colCount + 1,
      startIndex + 2 * colCount,
    ];
  }
  return [
    startIndex,
    startIndex + 1,
    startIndex + colCount + 1,
    startIndex + colCount + 2,
  ];
}
