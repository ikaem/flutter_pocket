import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rx_dart_test/src/features/tetris/domain/models/tetrimino.dart';
import 'package:rx_dart_test/src/features/tetris/utils/enums/piece.dart';
import 'package:rx_dart_test/src/features/tetris/utils/pieces.dart';
import 'package:rxdart/rxdart.dart';

class Engine {
  static const int COL_COUNT = 20;

  Engine({
    required this.boardWidth,
    required this.boardHeight,
  }) {
    effectiveWidth = (boardWidth / COL_COUNT).floor() * COL_COUNT;
    extent = effectiveWidth ~/
        COL_COUNT; // -> this might give how much is each block wide?
    effectiveHeight = (boardHeight / extent).floor() * extent;

    _itemCount = COL_COUNT *
        (effectiveHeight ~/
            extent); // - this is how much rows can be stacked up in the screen

    // add pices to set prices - we fill the list with colors here
    _setPieces.addAll(
      List<Color>.filled(_itemCount, Colors.white),
    );
  }

  final double boardWidth;
  final double boardHeight;

  int extent = 0;
  int effectiveWidth = 0;
  int effectiveHeight = 0;

  final List<Color> _setPieces = [];

  int _itemCount = 0;
  get itemCount => _itemCount;

  final StreamController<Tetrimino> _playerController = StreamController();
  final StreamController<UserInput> _inputController =
      StreamController.broadcast();
  final StreamController<GameData> _gameController =
      StreamController.broadcast();

  // exposing stuff

  // this is actually stream of pieces coming down
  Stream<Tetrimino> staticPlayerStream() {
// i guess tzhis will actually create a stream out of these parameters
// so i guess we know now that 800 / 20 - 40 - we will provide 40 elements? stream of 40 items?
    final endInclusive = effectiveHeight ~/ extent - 1;

    final stream = RangeStream(0, endInclusive).map((event) {
      // and we return one piece eachj tioem

      return Tetrimino(
        current: Piece.I,
        yOffset: (effectiveHeight ~/ extent - 1).toDouble(),
        origin: const Point(0, 0),
      );
    });

    return stream;
  }

  // stream of animating pieces - how are they animating if only difference is the intertval
  Stream<Tetrimino> animatingPlayerStream() {
    final endInclusive = effectiveHeight ~/ extent - 1;

    final stream =
        RangeStream(0, endInclusive).interval(Duration(milliseconds: 500)).map(
      (event) {
        return Tetrimino(
          current: Piece.I,
          yOffset: (effectiveHeight ~/ extent - 1).toDouble(),
          origin: const Point(0, 0),
        );
      },
    );

    return stream;
  }

  // this is stream for i dont know what
  Stream<Tetrimino> animatingPlayerWithCompletionStream() {
    final stream = animatingPlayerStream()
        // do on done will do something as a last thing
        .takeWhile((element) => _canTetriminoMove(element))
        .doOnDone(() {
      _onTetriminoSet(
        Tetrimino(
          current: Piece.I,
          yOffset: (effectiveHeight ~/ extent - 1).toDouble(),
          origin: const Point(0, 0),
        ),
      );
    });

    return stream;
  }

  // helpers
  void _onTetriminoSet(Tetrimino piece) {
    final indexes = mapToGridIndex(piece, extent, COL_COUNT);

    // THEN WE SET 4 NEW PIECES
    _setPieces[indexes[0]] = piece.color!;
    _setPieces[indexes[0]] = piece.color!;
    _setPieces[indexes[0]] = piece.color!;
    _setPieces[indexes[0]] = piece.color!;

    final isSetPieceAtTheTop = checkIsSetPieceAtTheTop(_setPieces, COL_COUNT);

    if (isSetPieceAtTheTop) {
      // here, we end the game
      _gameController.add(
        GameData(
          state: GameState.End,
          pieces: [],
        ),
      );
    } else {
      _gameController.add(GameData(
        state: GameState.Play,
        piece: _setPieces,
      ));

      spawn();
    }
  }
}
