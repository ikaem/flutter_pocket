import 'package:flutter/material.dart';

class LimitedBoxScreen extends StatelessWidget {
  static const routeName = "limited-box-screen";
  const LimitedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView.builder(
            padding: const EdgeInsets.all(10.0),
            itemCount: 5,
            itemBuilder: (context, index) {
              return LimitedBox(
                maxHeight: 50.0,
                // imagine this contained is any widget with no size specified
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  color: Colors.yellow,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
