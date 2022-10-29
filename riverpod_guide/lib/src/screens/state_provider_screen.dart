import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/counter_state_provider.dart';

class StateProviderScreen extends ConsumerWidget {
  static const routeName = "state-provider";
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterStateProvider);

// int means we are passing it state of int
    ref.listen<StateController<int>>(counterStateProvider.state, (prev, next) {
      showCounterSnackbar(context, next.state);
    });

    return ElevatedButton(
      onPressed: () {
        increment(ref);
      },
      child: Text("Increment from $counter"),
    );
  }

  void increment(WidgetRef ref) {
    final stateProviderNotifier = ref.read(counterStateProvider.notifier);

    stateProviderNotifier.state++;
  }

  void showCounterSnackbar(BuildContext context, int currentCounterState) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("This is state now: $currentCounterState"),
      ),
    );
  }
}
