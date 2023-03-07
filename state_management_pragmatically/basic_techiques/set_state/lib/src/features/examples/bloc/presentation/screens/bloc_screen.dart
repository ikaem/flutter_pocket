import 'package:flutter/material.dart';
import 'package:set_state/src/features/examples/bloc/presentation/screens/bloc_counter_screen.dart';
import 'package:set_state/src/navigation/app_router.dart';

class BlocScreen extends StatelessWidget {
  const BlocScreen({super.key});

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
                const BlocCounterScreen(),
              ),
              child: const Text("To counter bloc screen"),
            ),
          ],
        ),
      ),
    );
  }
}
