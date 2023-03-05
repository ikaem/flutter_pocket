import 'package:flutter/material.dart';
import 'package:set_state/src/features/getx/presentation/screens/getx_counter_screen.dart';
import 'package:set_state/src/navigation/app_router.dart';

class GetXScreen extends StatelessWidget {
  const GetXScreen({super.key});

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
