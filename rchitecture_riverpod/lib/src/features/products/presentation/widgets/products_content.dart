import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rchitecture_riverpod/src/features/products/domain/model.dart';

class ProductsContent extends StatelessWidget {
  const ProductsContent({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

// wrap inside list view to be able to hold stuff
    return Column(
      children: [
        Text(
          "Products:",
          style: theme.textTheme.headline2,
        ),
        Expanded(
          child: ListView.builder(
            // physics: const ScrollPhysics(),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];

              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 48.0,
                ),
                child: ListTile(
                  leading: Text(product.price.toString()),
                  title: Text(product.name),
                  trailing: Text(product.category),
                  subtitle: TextButton(
                    onPressed: () {},
                    child: Text("Add"),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
