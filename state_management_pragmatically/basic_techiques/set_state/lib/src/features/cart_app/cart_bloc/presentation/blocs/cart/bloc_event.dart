import 'package:set_state/src/domain/entities/cart_item/entity.dart';

class CartBlocEvent {}

class CartBlocEventAddCartItem extends CartBlocEvent {
  CartBlocEventAddCartItem({
    required this.item,
  });

  final ItemEntity item;
}

class CartBlocEventRemoveCartItem extends CartBlocEvent {
  CartBlocEventRemoveCartItem({
    required this.item,
  });

  final ItemEntity item;
}
