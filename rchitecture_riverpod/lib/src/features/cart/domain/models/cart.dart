import 'package:rchitecture_riverpod/src/features/cart/data/dto/cart_raw/cart_raw.dart';
import 'package:rchitecture_riverpod/src/features/cart/domain/models/cart_item.dart';

class Cart {
  const Cart({
    required this.id,
    required this.items,
  });

  final int id;
  final List<CartItem> items;

  factory Cart.fromCartRaw(CartRaw raw) {
    final items = raw.cart_items.map(
      (e) {
        return CartItem.fromCartItemRaw(e);
      },
    ).toList();

    return Cart(items: items, id: raw.id);
  }

  Cart copyWith({
    List<CartItem>? items,
  }) {
    return Cart(
      id: id,
      items: items ?? this.items,
    );
  }
}

extension CartExtension on Cart {
  Cart addToCart(CartItem item) {
    final newItems = [...items, item];

    final updatedCart = copyWith(items: newItems);

    return updatedCart;
  }
}
