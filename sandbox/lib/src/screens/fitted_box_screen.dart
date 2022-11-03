import 'package:flutter/material.dart';

class FittedBoxScreen extends StatelessWidget {
  static const routeName = "fitted-box-screen";
  const FittedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Row(
                children: const [
                  Expanded(
                    // this will scale the whole thing until it is fitted into the screen
                    // actually, it scaled the child to fit inside itself
                    child: FittedBox(
                      child: Text(
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 23.0,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
