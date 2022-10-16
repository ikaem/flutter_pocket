import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  static const routeName = "/animated-cross-fade";

  const AnimatedCrossFadeScreen({super.key});

  @override
  State<AnimatedCrossFadeScreen> createState() =>
      _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _crossFadeState =
                        _crossFadeState == CrossFadeState.showFirst
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst;
                  });
                },
                child: const Text("Fade"),
              ),
              AnimatedCrossFade(
                firstChild: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: const Text("Container 1"),
                ),
                secondChild: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child: const Text("Container 2"),
                ),
                crossFadeState: _crossFadeState,
                duration: const Duration(milliseconds: 1000),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
