import 'package:rchitecture_riverpod/src/features/cart/domain/models/cart_item.dart';

class CartItemRaw {
  const CartItemRaw({
    required this.id,
    required this.product_id,
    required this.item_quantity,
    required this.item_price,
    required this.item_name,
  });

  final int id;
  final int product_id;
  final int item_quantity;
  final double item_price;
  final String item_name;

  factory CartItemRaw.fromCartItem(CartItem cartItem) {
    return CartItemRaw(
      id: cartItem.id,
      product_id: cartItem.productId,
      item_quantity: cartItem.quantity,
      item_price: cartItem.price,
      item_name: cartItem.name,
    );
  }
}
