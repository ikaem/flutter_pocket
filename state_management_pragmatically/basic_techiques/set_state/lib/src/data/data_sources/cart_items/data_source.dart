// this si just for the app
import 'package:set_state/src/domain/entities/cart_item/entity.dart';

List<CartItemEntity> getCartItems() {
  return [
    const CartItemEntity(name: 'Keyboard', price: '24'),
    const CartItemEntity(name: 'Mouse', price: '20'),
    const CartItemEntity(name: 'LED Screen', price: '44'),
    const CartItemEntity(name: 'Macbook', price: '240'),
    const CartItemEntity(name: 'Surface book', price: '204'),
    const CartItemEntity(name: 'iMac', price: '248'),
    const CartItemEntity(name: 'Headphones', price: '29'),
    const CartItemEntity(name: 'USB Storage', price: '19'),
    const CartItemEntity(name: 'HDD', price: '23'),
  ];
}
