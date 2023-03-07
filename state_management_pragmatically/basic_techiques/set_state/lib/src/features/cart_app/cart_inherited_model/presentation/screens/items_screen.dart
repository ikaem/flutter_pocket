import 'package:flutter/material.dart';
import 'package:set_state/src/domain/entities/cart_item/entity.dart';
import 'package:set_state/src/features/cart_app/cart_inherited_model/presentation/providers/items_data_provider.dart';
import 'package:set_state/src/features/cart_app/cart_inherited_model/presentation/screens/cart_screen.dart';

// this does not need to be statful - it has to actually - to make sure we can rebuild
class AppInheritedModelItemsScreen extends StatelessWidget {
  const AppInheritedModelItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final ItemsInheritedModelDataProviderState itemsProvider =
    //     ItemsInheritedModelDataProvider.of(context);

    final ItemsInheritedModel itemsInheritedModel =
        InheritedModel.inheritFrom(context, aspect: 1)!;

    final List<ItemEntity> productItems = itemsInheritedModel.data.productItems;
    final List<ItemEntity> cartItems = itemsInheritedModel.data.cartItems;

    final bool shouldHideCartButton = cartItems.isEmpty;

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: productItems.length,
        itemBuilder: _productItemsListBuilder,
      ),
      floatingActionButton: shouldHideCartButton
          ? null
          : FloatingActionButton.extended(
              onPressed: () => _onNavigateToCartScreen(context),
              label: CartFloatingActionButtonContent(
                cartItems: cartItems,
              ),
            ),
    );
  }

  Widget _productItemsListBuilder(BuildContext context, int index) {
    // final ItemsInheritedModelDataProviderState itemsProvider =
    //     ItemsInheritedModelDataProvider.of(context);
    // final List<ItemEntity> productItems = itemsProvider.productItems;
    // final List<ItemEntity> cartItems = itemsProvider.cartItems;

    final ItemsInheritedModel itemsInheritedModel =
        InheritedModel.inheritFrom(context, aspect: 1)!;

    final List<ItemEntity> productItems = itemsInheritedModel.data.productItems;
    final List<ItemEntity> cartItems = itemsInheritedModel.data.cartItems;

    final ItemEntity item = productItems[index];
    final bool isItemInCart = cartItems.contains(item);

    return ListTile(
      title: Text(item.name),
      subtitle: Text(item.price.toString()),
      trailing: IconButton(
        onPressed: () {
          // note here that we have to inhrtit from model - from the actual model
          final ItemsInheritedModel itemsInheritedModel =
              InheritedModel.inheritFrom<ItemsInheritedModel>(context,
                  aspect: 1)!;

          if (isItemInCart) {
            itemsInheritedModel.data.removeFromCart(item);

            return;
          }

          itemsInheritedModel.data.addToCart(item);
        },
        icon: Icon(
          isItemInCart ? Icons.remove : Icons.add,
        ),
      ),
    );
  }

  Future<void> _onNavigateToCartScreen(BuildContext context) async {
    // make sure to rebuild the screen
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CartScreen(),
      ),
    );
  }
}

class CartFloatingActionButtonContent extends StatelessWidget {
  const CartFloatingActionButtonContent({
    super.key,
    required this.cartItems,
  });

  final List<ItemEntity> cartItems;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
          child: Text(cartItems.length.toString()),
        ),
        const SizedBox(width: 8),
        const Text('Cart'),
      ],
    );
  }
}
