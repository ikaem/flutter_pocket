import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:set_state/src/features/riverpod/presentation/controllers/counter_state/counter_state_notifier_provider.dart';

class StateNotifierProviderScreen extends StatelessWidget {
  const StateNotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final int value = ref.watch(counterStateNotifierProvider).count;
        final void Function() increment =
            ref.read(counterStateNotifierProvider.notifier).increment;

        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              children: [
                Text("Current value: $value"),
                TextButton(onPressed: increment, child: const Text("increment"))
              ],
            ),
          ),
        );
      },
    );
  }
}
