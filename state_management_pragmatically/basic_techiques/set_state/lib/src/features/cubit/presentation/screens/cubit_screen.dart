import 'package:flutter/material.dart';
import 'package:set_state/src/features/cubit/presentation/screens/cubit_counter_screen.dart';
import 'package:set_state/src/navigation/app_router.dart';

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

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
                const CubitCounterScreen(),
              ),
              child: const Text("To counter bloc screen"),
            ),
          ],
        ),
      ),
    );
  }
}
