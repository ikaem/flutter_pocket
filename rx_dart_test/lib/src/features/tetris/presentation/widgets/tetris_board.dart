import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rx_dart_test/src/features/tetris/domain/models/game_data.dart';
import 'package:rx_dart_test/src/features/tetris/stores/tetris/tetris_controller.dart';

class TetrisBoard extends StatefulWidget {
  const TetrisBoard({super.key});

  @override
  State<TetrisBoard> createState() => _TetrisBoardState();
}

class _TetrisBoardState extends State<TetrisBoard> {
  @override
  Widget build(BuildContext context) {
    // TODO we can get this, we created tetris controller with this engine at the start of the app
    final engine = TetrisController.of(context);

    return Container(
      color: Colors.white,
      width: engine.effectiveWidth.toDouble(),
      height: engine.effectiveHeight.toDouble(),
      child: StreamBuilder<GameData>(
        stream: engine.gridStateSteam,
        builder: (context, snapshot) {
          // TODO stopped here
        },
      ),
    );
  }
}
