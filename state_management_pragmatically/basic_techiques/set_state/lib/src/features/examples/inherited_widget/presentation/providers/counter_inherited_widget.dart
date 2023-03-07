import 'package:flutter/material.dart';

class CounterDataProvider extends StatefulWidget {
  const CounterDataProvider({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<CounterDataProvider> createState() => CounterDataProviderState();

  // this is retriving data of the _CounterIherted widget - and data is actuaqlly state of this widget  - a bit tricky, cause maybe we could then potentiually access build method
  static CounterDataProviderState of(BuildContext context) {
    final CounterInheritedWidget? inheritedWidget =
        context.dependOnInheritedWidgetOfExactType<CounterInheritedWidget>();
    assert(inheritedWidget != null, "No coutner found in the state");

    return inheritedWidget!.data;
  }
}

class CounterDataProviderState extends State<CounterDataProvider> {
  int _counterValue = 0;
  int get counterValue => _counterValue;

  void incrementCounter() => setState(() {
        _counterValue++;
      });

  @override
  Widget build(BuildContext context) {
    final CounterInheritedWidget inheritedWidget = CounterInheritedWidget(
      data: this,
      child: widget.child,
    );

    return inheritedWidget;
  }
}

// this is useing inhetrited model to prevent uneeded rendering of widgets that dont required rebuilding when somehting changes in inherited widget - like a widget that only has button that uses a method on the inhirted widget / model
class CounterInheritedWidget extends InheritedModel<int> {
  const CounterInheritedWidget({
    Key? key,
    required Widget child,
    required this.data,
  }) : super(key: key, child: child);

  final CounterDataProviderState data;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    if (child == oldWidget) return false;

    return true;
  }

  @override
  bool updateShouldNotifyDependent(
    covariant InheritedModel<int> oldWidget,
    Set<int> dependencies,
  ) {
    if (dependencies.contains(1)) return true;
    return false;
  }
}

// this will be wrapped by a stasteful widget
class _GeneralCounterInheritedWidget extends InheritedWidget {
  const _GeneralCounterInheritedWidget({
    Key? key,
    required Widget child,
    required this.data,
  }) : super(key: key, child: child);

  final CounterDataProviderState data;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    if (child == oldWidget) return false;

    return true;
  }
}
