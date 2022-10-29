import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/change_notifier_provider.dart';

class ChangeNotifierProviderScreen extends ConsumerWidget {
  static const routeName = "change-notifier-provider";
  const ChangeNotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authControllerProvider).user;
    final isSignedIn = ref.watch(authControllerProvider).isSingedIn;

    return Center(
      child: Column(
        children: [
          Text("Is singed in? $isSignedIn"),
          Text("User? ${user?.name}"),
          ElevatedButton(
            onPressed: () {
              ref.read(authControllerProvider).signIn();
            },
            child: const Text("Sign in"),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(authControllerProvider).signOut();
            },
            child: const Text("Sign out"),
          )
        ],
      ),
    );
  }
}
