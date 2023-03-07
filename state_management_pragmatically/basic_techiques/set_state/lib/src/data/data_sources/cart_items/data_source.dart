// this si just for the app
import 'package:set_state/src/domain/entities/cart_item/entity.dart';

List<ItemEntity> getProductItems() {
  return [
    const ItemEntity(name: 'Keyboard', price: '24'),
    const ItemEntity(name: 'Mouse', price: '20'),
    const ItemEntity(name: 'LED Screen', price: '44'),
    const ItemEntity(name: 'Macbook', price: '240'),
    const ItemEntity(name: 'Surface book', price: '204'),
    const ItemEntity(name: 'iMac', price: '248'),
    const ItemEntity(name: 'Headphones', price: '29'),
    const ItemEntity(name: 'USB Storage', price: '19'),
    const ItemEntity(name: 'HDD', price: '23'),
  ];
}
