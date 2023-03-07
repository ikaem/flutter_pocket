import 'package:flutter/material.dart';
import 'package:set_state/src/features/examples/riverpod/presentation/screens/state_notifier_provider_screen.dart';
import 'package:set_state/src/features/examples/riverpod/presentation/screens/state_provider_screen.dart';
import 'package:set_state/src/navigation/app_router.dart';

class RiverpodScreen extends StatelessWidget {
  const RiverpodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Karlo"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () =>
                  AppRouter.toScreen(context, const StateProviderScreen()),
              child: const Text("To state provider screen"),
            ),
            TextButton(
              onPressed: () => AppRouter.toScreen(
                  context, const StateNotifierProviderScreen()),
              child: const Text(
                  "To custom class as state (StateNotifierProvider) screen"),
            ),
          ],
        ),
      ),
    );
  }
}
