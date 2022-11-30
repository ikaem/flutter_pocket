import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rx_dart_test/src/features/tetris/stores/tetris/tetris_controller.dart';

class Player extends StatelessWidget {
  const Player({super.key});

  @override
  Widget build(BuildContext context) {
    final engine = TetrisController.of(context);

    return Center();
  }
}
