import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rx_dart_test/src/features/tetris/domain/models/game_data.dart';
import 'package:rx_dart_test/src/features/tetris/domain/models/tetrimino.dart';
import 'package:rx_dart_test/src/features/tetris/domain/models/user_input.dart';
import 'package:rx_dart_test/src/features/tetris/utils/enums/game_state.dart';
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

  Stream<GameData> get gridStateSteam {
    final Stream<GameData> stream = _gameController.stream.flatMap((value) {
      if (value.state == GameState.end) {
        return TimerStream(
          value,
          Duration(seconds: 2),
        );
      }

      final filledGridPieces = _getFilledRowIndexes(_setPieces, COL_COUNT);
// TODO i guess we jsut return oiriginal streeam - we start again
      if (filledGridPieces.isEmpty) return _gameController.stream;

// NOT SURTE WHAT THIS ACCOMPLISHES
      final streamFromFilledGridPieces =
          Stream.fromIterable(filledGridPieces).map(
        (index) {
          //  i guess et pices is all items taht we put there
          _setPieces.removeRange(index, index + COL_COUNT);

// why is always zero here - is this zero piece always
// and we want to create this many columns
          final columnsForRowIGuess =
              List.generate(COL_COUNT, (index) => Colors.white);
          _setPieces.insertAll(0, columnsForRowIGuess);

// TODO we do adjust game data
          return GameData(state: value.state, pieces: _setPieces);
        },
      );

      return streamFromFilledGridPieces;
    });

    return stream;
  }

  // helpers

  List<int> _getFilledRowIndexes(
    List<Color> setPieces,
    int colCount,
  ) {
    final rowIndexes = <int>[];

    // now we want to go over set pieces lenght

    for (int i = 0; i < setPieces.length; i++) {
      final bool iGuessThisIsIsSpaceNotSettledAndIsPieceInsideTheGrid =
          setPieces[i] != Colors.white && i % colCount == 0;

      if (iGuessThisIsIsSpaceNotSettledAndIsPieceInsideTheGrid) {
        bool isRowSet = true;

        // TODO i guess now we want to check piece next current space
        for (int incr = 1; incr < colCount; incr++) {
          // TODO this is actually us checking rest of the board of each space

          final isASpaceAboveRowFilled = setPieces[i + incr] == Colors.white;

          if (isASpaceAboveRowFilled) isRowSet = false;
        }

        // TODO now more
        if (isRowSet) rowIndexes.add(i);
      }
    }

    return rowIndexes;
  }

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
          state: GameState.end,
          pieces: [],
        ),
      );
    } else {
      _gameController.add(GameData(
        state: GameState.play,
        pieces: _setPieces,
      ));

      _spawn();
    }
  }

  bool _canTetriminoMove(Tetrimino piece) {
    final nextIndexes = mapToGridIndex(piece, extent, COL_COUNT);

// THIS MEANS THAT NONE OF THE INDEXES IS BIGGER THAN ITEM COUNT - I GUESS IN HEIGHT TERMS
    final isPieceInsideTheBoard = !nextIndexes.any(
      (element) {
        return element > itemCount;
      },
    );

    final isNextPositionCollisionFree = !nextIndexes.any(
      (element) {
        return _setPieces[element] != Colors.white;
      },
    );

    return isNextPositionCollisionFree && isPieceInsideTheBoard;
  }

  void _spawn() {
    // idea here is to put data into the stream controller
    final availablePieces = [
      Piece.I,
      Piece.J,
      Piece.T,
      Piece.S,
      Piece.Z,
      Piece.O,
      Piece.L,
    ];

    _playerController.add(
      Tetrimino(
        current: availablePieces[Random().nextInt(7)],
        origin: Point<double>(
          Random().nextInt(COL_COUNT - 4).toDouble() * extent,
          0,
        ),
        angle: 0,
      ),
    );
  }
}
