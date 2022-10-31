import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/for_select_provider.dart';

class SelectStateFieldScreen extends ConsumerWidget {
  static const routeName = "select-state";

  const SelectStateFieldScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
// note that we are only interested in bytesReceived, even though the state has bytesSent too
    final bytesReceived = ref.watch(
        connectionProvider.select((connection) => connection.bytesReceived));

    return Center(
      child: Text("Bytes received: $bytesReceived"),
    );
  }
}
