import 'package:flutter/material.dart';
import 'package:rx_dart_test/src/features/tetris/utils/enums/game_state.dart';

class GameData {
  const GameData({required this.state, required this.pieces});

  final GameState state;
  final List<Color> pieces;
}
