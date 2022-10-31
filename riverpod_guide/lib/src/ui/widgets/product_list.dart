import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/scoped_overriden_provider.dart';
import 'package:riverpod_guide/src/ui/widgets/product_item.dart';

const tempIds = [1, 2, 3, 4, 5];

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tempIds.length,
      itemBuilder: (context, index) {
        return ProviderScope(
          overrides: [
            currentProductIdProvider.overrideWithValue(tempIds[index])
          ],
          child: const ProductItem(
              // id: tempIds[index],
              ),
        );
      },
    );
  }
}
