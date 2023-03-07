import 'package:flutter/material.dart';
import 'package:set_state/src/data/data_sources/cart_items/data_source.dart';
import 'package:set_state/src/domain/entities/cart_item/entity.dart';
import 'package:set_state/src/features/cart_app/cart_set_state/presentation/screens/cart_screen.dart';

class AppSetStateItemsScreen extends StatefulWidget {
  const AppSetStateItemsScreen({super.key});

  @override
  State<AppSetStateItemsScreen> createState() => _AppSetStateItemsScreenState();
}

class _AppSetStateItemsScreenState extends State<AppSetStateItemsScreen> {
  late final List<ItemEntity> productItems;
  List<ItemEntity> cartItems = [];

  @override
  void initState() {
    super.initState();
    _getItems();
  }

  @override
  Widget build(BuildContext context) {
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

  void _getItems() {
    final items = getProductItems();
    setState(() {
      productItems = items;
    });
  }

  Widget _productItemsListBuilder(BuildContext context, int index) {
    final ItemEntity item = productItems[index];
    final bool isItemInCart = cartItems.contains(item);

    return ListTile(
      title: Text(item.name),
      subtitle: Text(item.price.toString()),
      trailing: IconButton(
        onPressed: () {
          isItemInCart ? cartItems.remove(item) : cartItems.add(item);
          setState(() {});
        },
        icon: Icon(
          isItemInCart ? Icons.remove : Icons.add,
        ),
      ),
    );
  }

  void _onNavigateToCartScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CartScreen(
          cartItems: cartItems,
          onCartUpdate: (items) => setState(
            () {
              cartItems = items;
            },
          ),
        ),
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
