import 'package:flutter/material.dart';

class IntrinsicWidthHeightScreen extends StatelessWidget {
  static const routeName = "/intrinsic-width-height";

  const IntrinsicWidthHeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Text("Normal case"),
              Column(
                children: [
                  // all widths are different here
                  buildContainer("1", Colors.red),
                  buildContainer("11", Colors.blue),
                  buildContainer("111", Colors.green),
                ],
              ),
              const Text("CrossAlign is stretch case"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // all width s match to width of the column because stretch
                  buildContainer("1", Colors.red),
                  buildContainer("11", Colors.blue),
                  buildContainer("111", Colors.green),
                ],
              ),
              const Text(
                  "CrossAlign is stretch case, but we have intrinstic width, so width of each is the width of the widest "),
              IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // all width s match widest element
                    buildContainer("1", Colors.red),
                    buildContainer("11", Colors.blue),
                    buildContainer("111", Colors.green),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(String text, Color color) {
    return Container(
      color: color,
      height: 40,
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
