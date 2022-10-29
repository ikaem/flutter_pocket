import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/future_provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  static const routeName = "future-provider";
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherFuture = ref.watch(weatherFutureProvider);

    return weatherFuture.when(
      data: (weather) => Text(weather.city.toString()),
      error: (error, stackTrace) {
        return Text("This is error: $error");
      },
      loading: (() => const Center(
            child: CircularProgressIndicator(),
          )),
    );
  }
}
