import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:set_state/src/domain/entities/cart_item/entity.dart';
import 'package:set_state/src/features/cart_app/cart_bloc/presentation/blocs/cart/bloc.dart';
import 'package:set_state/src/features/cart_app/cart_bloc/presentation/blocs/cart/bloc_event.dart';
import 'package:set_state/src/features/cart_app/cart_bloc/presentation/blocs/cart/bloc_state.dart';
import 'package:set_state/src/features/cart_app/cart_bloc/presentation/screens/cart_screen.dart';

class AppBlocItemsScreen extends StatelessWidget {
  const AppBlocItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CartBloc cartBloc = context.read<CartBloc>();

    return BlocBuilder<CartBloc, CartBlocState>(
      builder: (context, state) {
        final bool shouldHideCartButton = cartBloc.cartItems.isEmpty;

        return Scaffold(
          appBar: AppBar(),
          body: ListView.builder(
            itemBuilder: _productItemsListBuilder,
            itemCount: cartBloc.productItems.length,
          ),
          floatingActionButton: shouldHideCartButton
              ? null
              : FloatingActionButton.extended(
                  onPressed: () => _onNavigateToCartScreen(context),
                  label: CartFloatingActionButtonContent(
                    cartItems: cartBloc.cartItems,
                  ),
                ),
        );
      },
    );
  }

  Future<void> _onNavigateToCartScreen(BuildContext context) async {
    // make sure to rebuild the screen
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AppBlocCartScreen(),
      ),
    );
  }

  Widget _productItemsListBuilder(BuildContext context, int index) {
    final CartBloc cartBloc = context.read<CartBloc>();

    final List<ItemEntity> productItems = cartBloc.productItems;
    final List<ItemEntity> cartItems = cartBloc.cartItems;

    final ItemEntity item = productItems[index];
    final bool isItemInCart = cartItems.contains(item);

    return ListTile(
      title: Text(item.name),
      subtitle: Text(item.price.toString()),
      trailing: IconButton(
        onPressed: () {
          // note here that we have to inhrtit from model - from the actual model

          if (isItemInCart) {
            // itemsInheritedModel.data.removeFromCart(item);
            cartBloc.add(CartBlocEventRemoveCartItem(item: item));
            return;
          }

          cartBloc.add(CartBlocEventAddCartItem(item: item));
        },
        icon: Icon(
          isItemInCart ? Icons.remove : Icons.add,
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
