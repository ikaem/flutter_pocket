import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/notifier_async_notifier/counter/with_state_provider.dart';

class CounterWithStateProviderScreen extends ConsumerWidget {
  static const routeName = "CounterWithStateProviderScreen";

  const CounterWithStateProviderScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counterWithStateProvider);

    return Center(
      child: ElevatedButton(
        child: Text(counterState.toString()),
        onPressed: () => ref.read(counterWithStateProvider.notifier).state++,
      ),
    );
  }
}
