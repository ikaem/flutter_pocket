import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/hello_world_provider.dart';

class ConsumerStatefulWidgetScreen extends ConsumerStatefulWidget {
  static const routeName = "consumer-stateful-widget";

  const ConsumerStatefulWidgetScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidgetScreen> createState() =>
      _ConsumerStatefulWidgetScreenState();
}

class _ConsumerStatefulWidgetScreenState
    extends ConsumerState<ConsumerStatefulWidgetScreen> {
  @override
  void initState() {
    super.initState();
    final helloWorldText = ref.read(helloWorldProvider);
    print(helloWorldText);
  }

  //
  @override
  Widget build(BuildContext context) {
    // ref.watch() is only available in the build method
    final helloWorldText = ref.watch(helloWorldProvider);
    return Text(helloWorldText);
  }
}
