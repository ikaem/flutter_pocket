import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/date_format_provider.dart';

class ProviderScreen extends ConsumerWidget {
  static const routeName = "provider";

  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final formatter = ref.watch(dateFormatProvider);

    return Text(formatter.format(DateTime.now()));
  }
}
