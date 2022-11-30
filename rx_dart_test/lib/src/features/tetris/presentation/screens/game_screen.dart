import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rx_dart_test/src/features/tetris/stores/tetris/tetris_controller.dart';
import 'package:rx_dart_test/src/features/tetris/utils/enums/game_state.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final engine = TetrisController.of(context);

    return StreamBuilder(
      stream: engine.gridStateSteam,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return TitleScreen();
        }

        if (snapshot.data!.state == GameState.play) {
          return GamePlayScreen();
        }

        return TitleScreen();
      },
    );
  }
}
