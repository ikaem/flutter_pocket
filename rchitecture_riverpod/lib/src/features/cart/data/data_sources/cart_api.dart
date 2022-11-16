import 'package:rchitecture_riverpod/src/application/services/in_memory_store/in_memory_store.dart';
import 'package:rchitecture_riverpod/src/features/cart/data/dto/cart_raw/cart_raw.dart';

class CartApi {
// TODO test only
  final _cartState = InMemoryStore<CartRaw?>(null);

  Stream<CartRaw?> cartStateChanges() {
    return _cartState.stream;
  }

// this is fake - usually this would return Uri
  CartRaw? getCart() {
    return _cartState.value;
  }

  void saveCart({required CartRaw cartRaw}) {
    // return fakeProducts.firstWhereOrNull((e) => e.id == id);
    // we will store this somewhere with that rx thing

    _cartState.value = cartRaw;
  }

// TODO unused - will use save instead
  void updateCart({
    required CartRaw cartRaw,
  }) {
    final oldCartRaw = getCart();

    if (oldCartRaw == null) return;

    final newCartRaw = oldCartRaw.copyWith(cart_items: cartRaw.cart_items);

    saveCart(cartRaw: newCartRaw);
  }
}
