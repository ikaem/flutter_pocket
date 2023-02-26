import 'package:flutter/material.dart';
import 'package:set_state/src/features/provider/presentation/screens/change_notifier_screen.dart';
import 'package:set_state/src/navigation/app_router.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

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
                  AppRouter.toScreen(context, const ChangeNotifierScreen()),
              child: const Text("To change notifier screen"),
            ),
          ],
        ),
      ),
    );
  }
}
