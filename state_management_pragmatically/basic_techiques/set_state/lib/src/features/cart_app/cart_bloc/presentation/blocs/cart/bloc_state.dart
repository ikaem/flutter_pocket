import 'package:equatable/equatable.dart';
import 'package:set_state/src/domain/entities/cart_item/entity.dart';

class CartBlocState extends Equatable {
  const CartBlocState();

  @override
  List<Object?> get props => [];
}

class CartBlocStateLoading extends CartBlocState {
  const CartBlocStateLoading();

  @override
  List<Object?> get props => [];
}

class CartBlocCartItemsState extends CartBlocState {
  const CartBlocCartItemsState({
    required this.cartItems,
  });

  final List<ItemEntity> cartItems;

  @override
  List<Object?> get props => [cartItems];
}
