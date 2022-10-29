import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/stream_provider.dart';

class StreamProviderScreen extends ConsumerWidget {
  static const routeName = "stream-provider";

  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authAsync = ref.watch(authStreamProvider);

    return authAsync.when(
      data: (data) {
        log("this is data: $data");

        return const Text("logged?");
      },
      error: (err, st) {
        return Text("Error: $err");
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
