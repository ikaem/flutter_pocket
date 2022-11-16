import 'package:rchitecture_riverpod/src/features/cart/data/dto/cart_raw/cart_raw.dart';
import 'package:rchitecture_riverpod/src/features/products/data/dto/product_raw/product_raw.dart';

abstract class CartRepository {
  Future<CartRaw?> getOne(int id);
  Stream<CartRaw?> watchOne(int id);
  Future<void> setOne(CartRaw cartRaw);
}
