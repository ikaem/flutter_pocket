import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:set_state/src/features/examples/inherited_widget/presentation/providers/counter_inherited_widget.dart';

class InheritedWidgetScreen extends StatefulWidget {
  const InheritedWidgetScreen({super.key});

  @override
  State<InheritedWidgetScreen> createState() => _InheritedWidgetScreenState();
}

class _InheritedWidgetScreenState extends State<InheritedWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: const [
            Text("This uses inhertied widget to show and set its data"),
            _CounterValue(),
            _CounterIncrement(),
          ],
        ),
      ),
    );
  }
}

class _CounterValue extends StatelessWidget {
  const _CounterValue();

  @override
  Widget build(BuildContext context) {
    log("Building value widget");

// use with inherited widget
    // final int currentValue = CounterDataProvider.of(context).counterValue;
    // const int currentValue = 2;

    // use with inhrtited model
    final int currentValue =
        InheritedModel.inheritFrom<CounterInheritedWidget>(context, aspect: 1)!
            .data
            .counterValue;

    return Text(currentValue.toString());
  }
}

class _CounterIncrement extends StatelessWidget {
  const _CounterIncrement();

  @override
  Widget build(BuildContext context) {
    log("building button widget");
    // with inherited widget
    // final Function() increment =
    //     CounterDataProvider.of(context).incrementCounter;

    // with inherited model
    final void Function() increment =
        InheritedModel.inheritFrom<CounterInheritedWidget>(context, aspect: 2)!
            .data
            .incrementCounter;

    return ElevatedButton(onPressed: increment, child: const Text("Increment"));
  }
}
