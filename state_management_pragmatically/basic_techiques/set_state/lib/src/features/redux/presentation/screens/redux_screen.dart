import 'package:flutter/material.dart';
import 'package:set_state/src/features/redux/presentation/screens/redux_counter_screen.dart';
import 'package:set_state/src/navigation/app_router.dart';

class ReduxScreen extends StatelessWidget {
  const ReduxScreen({super.key});

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
              onPressed: () => AppRouter.toScreen(
                context,
                const ReduxCounterScreen(),
              ),
              child: const Text("To redux counter screen"),
            ),
          ],
        ),
      ),
    );
  }
}
