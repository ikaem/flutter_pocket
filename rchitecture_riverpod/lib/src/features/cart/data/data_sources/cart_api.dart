import 'package:rchitecture_riverpod/src/application/services/in_memory_store/in_memory_store.dart';

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

    _cartState.value(cartRaw);
  }

  void updateCart({
    required CartRaw cartRaw,
  }) {
    final oldCartRaw = getCart();

// TODO need to make this method
    final newCartRaw = oldCartRaw.copy(cartRaw);

    saveCart(cartRaw: cartRaw);
  }
}
