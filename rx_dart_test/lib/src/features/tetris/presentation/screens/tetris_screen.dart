import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
