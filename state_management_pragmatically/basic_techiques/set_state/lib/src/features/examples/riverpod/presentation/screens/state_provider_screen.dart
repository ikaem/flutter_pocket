import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:set_state/src/features/examples/riverpod/presentation/controllers/counter/counter_provider.dart';

class StateProviderScreen extends StatelessWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final int count = ref.watch(counterStateProvider);
        final StateController<int> countController =
            ref.read(counterStateProvider.notifier);

        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Text("This is current count: $count"),
              TextButton(
                  onPressed: () => countController.state++,
                  child: const Text("Increment"))
            ],
          ),
        );
      },
    );
  }
}
