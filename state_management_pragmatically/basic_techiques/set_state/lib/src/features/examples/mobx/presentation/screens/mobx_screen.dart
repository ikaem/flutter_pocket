import 'package:flutter/material.dart';
import 'package:set_state/src/features/examples/getx/presentation/screens/getx_counter_screen.dart';
import 'package:set_state/src/navigation/app_router.dart';

class MobXScreen extends StatelessWidget {
  const MobXScreen({super.key});

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
                const GetXCounterScreen(),
              ),
              child: const Text("To getx counter screen"),
            ),
          ],
        ),
      ),
    );
  }
}
