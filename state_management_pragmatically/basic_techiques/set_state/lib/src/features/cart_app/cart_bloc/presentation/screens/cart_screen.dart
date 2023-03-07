import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:set_state/src/domain/entities/cart_item/entity.dart';
import 'package:set_state/src/features/cart_app/cart_bloc/presentation/blocs/cart/bloc.dart';
import 'package:set_state/src/features/cart_app/cart_bloc/presentation/blocs/cart/bloc_event.dart';
import 'package:set_state/src/features/cart_app/cart_bloc/presentation/blocs/cart/bloc_state.dart';

class AppBlocCartScreen extends StatelessWidget {
  const AppBlocCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CartBloc cartBloc = context.read<CartBloc>();
    final List<ItemEntity> cartItems = cartBloc.cartItems;

    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<CartBloc, CartBlocState>(
        builder: (context, state) {
          if (state is CartBlocStateLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
            itemBuilder: _cartItemsListBuilder,
            itemCount: cartItems.length,
          );
        },
      ),
    );
  }

  Widget _cartItemsListBuilder(BuildContext context, int index) {
    final CartBloc cartBloc = context.read<CartBloc>();
    final List<ItemEntity> cartItems = cartBloc.cartItems;

    final ItemEntity item = cartItems[index];
    final bool isItemInCart = cartItems.contains(item);

    return ListTile(
      title: Text(item.name),
      subtitle: Text(item.price.toString()),
      trailing: IconButton(
        onPressed: () {
          if (isItemInCart) {
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
