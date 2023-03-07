import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:set_state/src/data/data_sources/cart_items/data_source.dart';
import 'package:set_state/src/domain/entities/cart_item/entity.dart';
import 'package:set_state/src/features/cart_app/cart_bloc/presentation/blocs/cart/bloc_event.dart';
import 'package:set_state/src/features/cart_app/cart_bloc/presentation/blocs/cart/bloc_state.dart';

class CartBloc extends Bloc<CartBlocEvent, CartBlocState> {
  CartBloc() : super(const CartBlocState()) {
    _registerEventHandlers();
  }

  final List<ItemEntity> _productItems = getProductItems();
  final List<ItemEntity> _cartItems = [];

  List<ItemEntity> get productItems => _productItems;
  List<ItemEntity> get cartItems => _cartItems;

  void _registerEventHandlers() {
    on<CartBlocEventAddCartItem>(_onAddCartItem);
    on<CartBlocEventRemoveCartItem>(_onRemoveCartItem);
  }

  Future<void> _onAddCartItem(
    CartBlocEventAddCartItem event,
    Emitter<CartBlocState> emitter,
  ) async {
    emitter(const CartBlocStateLoading());

    _cartItems.remove(event.item);
    emit(CartBlocCartItemsState(cartItems: cartItems));
  }

  Future<void> _onRemoveCartItem(
    CartBlocEventRemoveCartItem event,
    Emitter<CartBlocState> emitter,
  ) async {
    emitter(const CartBlocStateLoading());

    _cartItems.remove(event.item);
    emit(CartBlocCartItemsState(cartItems: cartItems));
  }
}
