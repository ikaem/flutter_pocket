import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sandbox/src/keys/services/unique_color_generator.dart';

class StatelessColorfulTile extends StatelessWidget {
  StatelessColorfulTile({super.key});
  final myColor = UniqueCOlorGenerator.getColor();

  @override
  Widget build(BuildContext context) {
    // final myColor = UniqueCOlorGenerator.getColor();
    return Container(
      color: myColor,
      child: const Padding(padding: EdgeInsets.all(70)),
    );
  }
}
