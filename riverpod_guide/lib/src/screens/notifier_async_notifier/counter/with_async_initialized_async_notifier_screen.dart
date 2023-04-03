import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/notifier_async_notifier/example_with_async_initialization/controller_provider.dart';

class WithAsyncInitializedAsyncInitializerScreen extends ConsumerWidget {
  static const routeName = "WithAsyncInitializedAsyncInitializerScreen";

  const WithAsyncInitializedAsyncInitializerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncNotifierState = ref.watch(someControllerProvider);
    final asyncNotifierStateWithValue =
        ref.watch(SomeControllerWithArgumentsProvider("Hi"));

    return asyncNotifierState.when(
      data: (data) => Center(child: Text(data)),
      error: (error, stackTrace) => Center(child: Text(error.toString())),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
