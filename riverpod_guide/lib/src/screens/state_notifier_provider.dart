import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_guide/src/providers/state_notifier_provider.dart';

class StateNotifierProviderScreen extends ConsumerWidget {
  static const routeName = "state-notifier-provider";
  const StateNotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // note that this is an antipattern - avoid this in build method directly
    final currentTimeNotifierObject =
        ref.read(clockStateNotifierProvider.notifier);

    // currentTimeNotifierObject.dispose();

    final currentTime = ref.watch(clockStateNotifierProvider);
    final formattedCurrentTime = DateFormat.Hms().format(currentTime);

    return Text(formattedCurrentTime);
  }
}
