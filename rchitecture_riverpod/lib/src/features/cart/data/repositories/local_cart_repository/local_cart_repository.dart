import 'package:rchitecture_riverpod/src/application/services/in_memory_store/in_memory_store.dart';
import 'package:rchitecture_riverpod/src/features/cart/data/data_sources/cart_api.dart';
import 'package:rchitecture_riverpod/src/features/cart/data/dto/cart_raw/cart_raw.dart';
import 'package:rchitecture_riverpod/src/features/cart/data/repositories/cart_repository.dart';

class LocalCartRepositroy implements CartRepository {
  LocalCartRepositroy({
    required this.cartApi,
  });

  final CartApi cartApi;

  @override
  Future<CartRaw?> getOne(int id) async {
    final CartRaw? cartRaw = cartApi.getCart();

    return cartRaw;
  }

  @override
  Future<void> setOne(CartRaw cartRaw) async {
    cartApi.saveCart(cartRaw: cartRaw);
  }

  @override
  Stream<CartRaw?> watchOne(int id) {
    return cartApi.cartStateChanges();
  }
}
