import 'package:flutter/material.dart';
import 'package:set_state/src/features/examples/get_it/presentation/screens/get_it_counter_screen.dart';
import 'package:set_state/src/navigation/app_router.dart';

class GetItScreen extends StatelessWidget {
  const GetItScreen({super.key});

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
                const GetItCounterScreen(),
              ),
              child: const Text("To GetIt counter screen"),
            ),
          ],
        ),
      ),
    );
  }
}
