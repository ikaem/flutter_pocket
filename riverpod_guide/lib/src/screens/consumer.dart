import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/hello_world_provider.dart';

class ConsumerScreen extends StatelessWidget {
  static const routeName = "consumer";

  const ConsumerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final helloWorldText = ref.watch(helloWorldProvider);
        return Text(helloWorldText);
      },
    );
  }
}
