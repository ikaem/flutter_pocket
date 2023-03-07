import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:set_state/src/features/examples/provider/presentation/controllers/counter/counter_notifier.dart';

class ChangeNotifierScreen extends StatelessWidget {
  const ChangeNotifierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final CounterNotifier counterNotifier =
    //     Provider.of<CounterNotifier>(context);

    final CounterNotifier counterNotifier = context.watch<CounterNotifier>();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          Text("This is value: ${counterNotifier.count}"),
          const CounterIncrement(),
        ]),
      ),
    );
  }
}

class CounterIncrement extends StatelessWidget {
  const CounterIncrement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log("Built coutner increment");

    // final CounterNotifier counterNotifier = Provider.of<CounterNotifier>(
    //   context,
    //   listen: false,
    // );

// TODO same as above
    final CounterNotifier counterNotifier = context.read<CounterNotifier>();

    return TextButton(
      onPressed: counterNotifier.increment,
      child: const Text("increment"),
    );
  }
}
