import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sandbox/src/keys/services/unique_color_generator.dart';

class StatefullColorfulTile extends StatefulWidget {
  const StatefullColorfulTile({super.key});

  @override
  State<StatefullColorfulTile> createState() => _StatefullColorfulTileState();
}

class _StatefullColorfulTileState extends State<StatefullColorfulTile> {
  late Color myColor;

  @override
  void initState() {
    super.initState();
    myColor = UniqueCOlorGenerator.getColor();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myColor,
      child: const Padding(padding: EdgeInsets.all(70)),
    );
  }
}
