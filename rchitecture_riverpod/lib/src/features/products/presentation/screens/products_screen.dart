import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/cart/presentation/widgets/cart_icon_with_items_amount.dart';
import 'package:rchitecture_riverpod/src/features/products/presentation/state/providers/products_controller_provider.dart';
import 'package:rchitecture_riverpod/src/features/products/presentation/widgets/products_content.dart';

class ProductsScreen extends ConsumerWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsValue = ref.watch(productsControllerProvider);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Bunch of products"),
          actions: [
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CartIconWithItemsAmount(itemsAmount: 3),
            )),
            // Text("Hello")
            // Row(
            //   children: [
            //     Text("hello"),
            //   ],
            // )
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.purple.shade300,
          child: productsValue.when(
            data: (data) {
              //
              return ProductsContent(products: data);
            },
            error: (error, stackTrace) {
              return const Center(
                child: Text("Error is in"),
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
