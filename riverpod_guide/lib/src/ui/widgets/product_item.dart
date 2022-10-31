import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/scoped_overriden_provider.dart';

class ProductItem extends ConsumerWidget {
  const ProductItem({
    // required this.id,
    super.key,
  });

  // final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.watch(currentProductIdProvider);

    return Center(
      child: Container(
        child: Text("This is id: $id"),
      ),
    );
  }
}
