import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/notifier_async_notifier/counter/with_generated_notifier.dart';

class CounterWithNotifierProviderScreen extends ConsumerWidget {
  static const routeName = "CounterWithNotifierProviderScreen";

  const CounterWithNotifierProviderScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final counterState = ref.watch(counterWithNotiferProvider);
    final counterState = ref.watch(counterWithGenerationProvider);

    return Center(
      child: ElevatedButton(
        child: Text(counterState.toString()),
        onPressed: () =>
            // ref.read(counterWithNotiferProvider.notifier).increment(),
            // seems jot to allow this - say state can alnly be used inside instance members .- i like that
            // ref.read(counterWithNotiferProvider.notifier).state++,
            ref.read(counterWithGenerationProvider.notifier).state++,
      ),
    );
  }
}
