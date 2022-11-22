import 'package:flutter/material.dart';

class TetrisController extends InheritedWidget {
  const TetrisController({
    Key? key,
    required this.engine,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  final Engine engine;

// note that we return engine
  static Engine of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<TetrisController>();

    assert(result != null, "No Engine found in context");

    return result!.engine;
  }

  @override
  // TODO never notify
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
