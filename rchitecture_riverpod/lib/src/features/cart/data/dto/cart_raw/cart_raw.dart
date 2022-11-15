import 'package:rchitecture_riverpod/src/features/cart/data/dto/cart_item_raw/cart_item_raw.dart';
import 'package:rchitecture_riverpod/src/features/cart/domain/models/cart.dart';

class CartRaw {
  const CartRaw({
    required this.cart_items,
    required this.id,
  });

  final List<CartItemRaw> cart_items;
  final int id;

  factory CartRaw.fromCart(Cart cart) {
    final cartItemsRaw = cart.items.map((item) {
      return CartItemRaw.fromCartItem(item);
    }).toList();

    return CartRaw(cart_items: cartItemsRaw, id: cart.id);
  }

  CartRaw copy(CartRaw raw) {
    return CartRaw(
      cart_items: raw.cart_items.map((e) => e).toList(),
      id: id,
    );
  }

  CartRaw copyWith({
    required List<CartItemRaw>? cart_items,
  }) {
    return CartRaw(
      cart_items: cart_items ?? this.cart_items,
      id: id,
    );
  }
}
