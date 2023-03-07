import 'package:flutter/material.dart';
import 'package:set_state/src/domain/entities/cart_item/entity.dart';
import 'package:set_state/src/features/cart_app/cart_inherited_model/presentation/providers/items_data_provider.dart';

// no need to be stateful
class CartScreen extends StatefulWidget {
  const CartScreen({
    super.key,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final ItemsInheritedModelDataProviderState itemsProvider =
        ItemsInheritedModelDataProvider.of(context);
    final List<ItemEntity> cartItems = itemsProvider.cartItems;

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: _cartItemsListBuilder,
      ),
    );
  }

  Widget _cartItemsListBuilder(BuildContext context, int index) {
    final ItemsInheritedModelDataProviderState itemsProvider =
        ItemsInheritedModelDataProvider.of(context);
    final List<ItemEntity> cartItems = itemsProvider.cartItems;

    final ItemEntity item = cartItems[index];
    final bool isItemInCart = cartItems.contains(item);

    return ListTile(
      title: Text(item.name),
      subtitle: Text(item.price.toString()),
      trailing: IconButton(
        onPressed: () {
          isItemInCart
              ? itemsProvider.removeFromCart(item)
              : itemsProvider.addToCart(item);

// we need to set state here, to rebuild the screen
// we dont want to rebuild whole widget tree from inhrrited widget on each change just when items in cart change
          setState(() {});
        },
        icon: Icon(
          isItemInCart ? Icons.remove : Icons.add,
        ),
      ),
    );
  }
}
