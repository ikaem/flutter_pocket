import 'package:flutter/material.dart';
import 'package:set_state/src/domain/entities/cart_item/entity.dart';
import 'package:set_state/src/features/cart_app/cart_inherited_widget/presentation/providers/items_data_provider.dart';
import 'package:set_state/src/features/cart_app/cart_inherited_widget/presentation/screens/cart_screen.dart';

// this does not need to be statful - it has to actually - to make sure we can rebuild
class AppInheritedWidgetItemsScreen extends StatefulWidget {
  const AppInheritedWidgetItemsScreen({super.key});

  @override
  State<AppInheritedWidgetItemsScreen> createState() =>
      _AppInheritedWidgetItemsScreenState();
}

class _AppInheritedWidgetItemsScreenState
    extends State<AppInheritedWidgetItemsScreen> {
  @override
  Widget build(BuildContext context) {
    final ItemsDataProviderState itemsProvider = ItemsDataProvider.of(context);
    final List<ItemEntity> productItems = itemsProvider.productItems;
    final List<ItemEntity> cartItems = itemsProvider.cartItems;

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
              onPressed: _onNavigateToCartScreen,
              label: CartFloatingActionButtonContent(
                cartItems: cartItems,
              ),
            ),
    );
  }

  Widget _productItemsListBuilder(BuildContext context, int index) {
    final ItemsDataProviderState itemsProvider = ItemsDataProvider.of(context);
    final List<ItemEntity> productItems = itemsProvider.productItems;
    final List<ItemEntity> cartItems = itemsProvider.cartItems;

    final ItemEntity item = productItems[index];
    final bool isItemInCart = cartItems.contains(item);

    return ListTile(
      title: Text(item.name),
      subtitle: Text(item.price.toString()),
      trailing: IconButton(
        onPressed: () {
          isItemInCart
              ? itemsProvider.removeFromCart(item)
              : itemsProvider.addToCart(item);
          // we have to set state here to rebuild widget
          setState(() {});
        },
        icon: Icon(
          isItemInCart ? Icons.remove : Icons.add,
        ),
      ),
    );
  }

  Future<void> _onNavigateToCartScreen() async {
    // make sure to rebuild the screen
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CartScreen(),
      ),
    );

    setState(() {});
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
