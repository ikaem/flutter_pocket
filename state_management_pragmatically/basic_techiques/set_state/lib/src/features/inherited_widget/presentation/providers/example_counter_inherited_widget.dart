import 'package:flutter/material.dart';

class ExampleNotUsedHereCounterInheritedWidget extends InheritedWidget {
  const ExampleNotUsedHereCounterInheritedWidget({
    Key? key,
    required this.counter,
    required Widget child,
  }) : super(key: key, child: child);

  final int counter;

  static ExampleNotUsedHereCounterInheritedWidget of(BuildContext context) {
    final ExampleNotUsedHereCounterInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<
            ExampleNotUsedHereCounterInheritedWidget>();

    assert(result != null, "No counter found in the context");

    return result!;
  }

  @override
  bool updateShouldNotify(
      covariant ExampleNotUsedHereCounterInheritedWidget oldWidget) {
    if (counter == oldWidget.counter) return false;

    return true;
  }
}
