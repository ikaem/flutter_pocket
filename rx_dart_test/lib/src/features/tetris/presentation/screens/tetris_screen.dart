import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rx_dart_test/src/features/tetris/presentation/widgets/player.dart';
import 'package:rx_dart_test/src/features/tetris/presentation/widgets/tetris_board.dart';

class TetrisScreen extends StatelessWidget {
  const TetrisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Center(
          child: TetrisBoard(),
        ),
        const Player(),
        const GameLayer(),
      ],
    );
  }
}
