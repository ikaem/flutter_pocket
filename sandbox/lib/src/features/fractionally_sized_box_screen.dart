import 'package:flutter/material.dart';

class FractionallySizedBoxScreen extends StatelessWidget {
  static const routeName = "fractionally-sized-box-screen";
  const FractionallySizedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: FractionallySizedBox(
                  heightFactor: 0.1,
                  widthFactor: 0.5,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                width: 500,
                child: FractionallySizedBox(
                  heightFactor: 0.5,
                  widthFactor: 0.6,
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
