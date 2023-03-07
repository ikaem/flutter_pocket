import 'package:flutter/material.dart';
import 'package:set_state/src/features/examples/mobx/presentation/stores/counter/store.dart';
import "package:flutter_mobx/flutter_mobx.dart";

class MobXCounterScreen extends StatelessWidget {
  MobXCounterScreen({super.key});
  // they actually pass the bloc here manually

// this will create new isntance each time
// so dpenednecy injection would be better - with get it or something
// and then we could possibly inject it on a screen, and consume it in a view
// and we also need to discard it somehow too
  final CounterMobXStore counterMobXStore = CounterMobXStore();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Observer(builder: (_) => Text("state: ${counterMobXStore.value}")),
        const SizedBox(
          height: 42,
        ),
        TextButton(
          onPressed: () => counterMobXStore.increment(),
          child: const Text("Increment"),
        ),
        const SizedBox(
          height: 42,
        ),
      ],
    );
  }
}
