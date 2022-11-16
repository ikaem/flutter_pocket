import 'package:rchitecture_riverpod/src/features/cart/domain/models/cart.dart';
import 'package:rchitecture_riverpod/src/features/cart/domain/models/cart_item.dart';

extension CartExtension on Cart {
  Cart addToCart(CartItem item) {
    final newItems = [...items, item];

    final updatedCart = copyWith(items: newItems);

    return updatedCart;
  }
}
