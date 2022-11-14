import 'package:flutter/cupertino.dart';
import 'package:rchitecture_riverpod/src/features/cart/data/dto/cart_item_raw/cart_item_raw.dart';

@immutable
class CartItem {
  const CartItem({
    required this.id,
    required this.productId,
    required this.quantity,
    required this.price,
    required this.name,
  });

  final int id;
  final int productId;
  final int quantity;
  final double price;
  final String name;

// this could easily be a factory cosntrucotr too?
  CartItem fromCartItemRaw(CartItemRaw raw) {
    return CartItem(
      id: raw.id,
      productId: raw.product_id,
      quantity: raw.item_quantity,
      price: raw.item_price,
      name: raw.item_name,
    );
  }

  // and copy with as well

  CartItem copyWith({int? quantity}) {
    return CartItem(
      id: id,
      productId: productId,
      quantity: quantity ?? this.quantity,
      price: price,
      name: name,
    );
  }
}
