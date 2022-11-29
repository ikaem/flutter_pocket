import 'package:flutter/material.dart';
import 'package:rx_dart_test/src/features/tetris/presentation/screens/tetris_screen.dart';
import 'package:rx_dart_test/src/features/tetris/stores/tetris/tetris_controller.dart';
import 'package:rx_dart_test/src/presentation/stores/engine/engine.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Builder(
      builder: (builderContext) {
        final Size size = MediaQuery.of(builderContext).size;

        return Scaffold(
          body: TetrisController(
            engine: Engine(
              boardWidth: size.width,
              boardHeight: size.height,
            ),
            child: const TetrisScreen(),
          ),
        );
      },
    );
  }
}
