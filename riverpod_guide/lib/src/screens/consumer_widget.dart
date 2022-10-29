import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/hello_world_provider.dart';

class ConsumerWidgetScreen extends ConsumerWidget {
  static const routeName = "consumer-widget";

  const ConsumerWidgetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloWorldText = ref.watch(helloWorldProvider);
    return Text(helloWorldText);
  }
}
