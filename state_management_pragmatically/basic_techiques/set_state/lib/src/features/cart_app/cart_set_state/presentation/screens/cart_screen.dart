import 'package:flutter/material.dart';
import 'package:set_state/src/domain/entities/cart_item/entity.dart';

// has to be stateful - otherwise it will not rebuild and refresh
class CartScreen extends StatefulWidget {
  const CartScreen({
    super.key,
    required this.cartItems,
    required this.onCartUpdate,
  });

  final List<ItemEntity> cartItems;
  final void Function(List<ItemEntity>) onCartUpdate;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: widget.cartItems.length,
        itemBuilder: _cartItemsListBuilder,
      ),
    );
  }

  Widget _cartItemsListBuilder(BuildContext context, int index) {
    final ItemEntity item = widget.cartItems[index];
    final bool isItemInCart = widget.cartItems.contains(item);

    return ListTile(
      title: Text(item.name),
      subtitle: Text(item.price.toString()),
      trailing: IconButton(
        onPressed: () {
          isItemInCart
              ? widget.cartItems.remove(item)
              : widget.cartItems.add(item);

          setState(() {});
          widget.onCartUpdate(widget.cartItems);
        },
        icon: Icon(
          isItemInCart ? Icons.remove : Icons.add,
        ),
      ),
    );
  }
}
