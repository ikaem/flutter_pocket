// this is used for nav purposes

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/authentication/presentation/screens/sign_in_screen.dart';
import 'package:rchitecture_riverpod/src/features/authentication/presentation/state/providers/auth_state_changes_provider.dart';
import 'package:rchitecture_riverpod/src/presentation/screens/home_screen.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // so now we can get the state changes provider
    // this could be a controller in theory, too
    final authState = ref.watch(authStateChangesProvider);

    // return authState.when(
    return authState.maybeWhen(data: (data) {
      //
      // return const Text("WE DO HAVE DATA HERE NOW");

      if (data == null) return const SignInScreen();

      return const HomeScreen(title: "Some title, but only when returned");
    }, error: (err, stackTrace) {
      return const Text("This is now error");
    }, loading: () {
      //
      return const Text("This is now loading");
    },
        // TODO this is case when using maybe when
        orElse: () {
      return const Center(
        child: Text("where to go from here?"),
      );
    });

    // return const Text("test only");
  }
}
