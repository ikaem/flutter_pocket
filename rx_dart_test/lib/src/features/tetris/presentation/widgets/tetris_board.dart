import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rx_dart_test/src/features/tetris/domain/models/game_data.dart';
import 'package:rx_dart_test/src/features/tetris/stores/tetris/tetris_controller.dart';
import 'package:rx_dart_test/src/features/tetris/utils/enums/game_state.dart';

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

          if (!snapshot.hasData) {
            return SizedBox.shrink();
          }

          switch (snapshot.data!.state) {
            case GameState.play:
              {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: engine.extent.toDouble(),
                  ),
                  itemCount: engine.itemCount,
                  itemBuilder: (context, index) {
                    Color color = Colors.white;

                    if (snapshot.data!.pieces.isNotEmpty) {
                      color = snapshot.data!.pieces[index];
                    }
                    return ColoredBox(color: color);
                  },
                );
              }
            case GameState.start:
            case GameState.end:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
