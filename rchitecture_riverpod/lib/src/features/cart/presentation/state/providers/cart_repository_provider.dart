import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/cart/data/data_sources/cart_api.dart';
import 'package:rchitecture_riverpod/src/features/cart/data/repositories/cart_repository.dart';
import 'package:rchitecture_riverpod/src/features/cart/data/repositories/local_cart_repository/local_cart_repository.dart';

final cartRepositoryProvider = Provider(
  (ref) {
    final CartRepository cartRepository = LocalCartRepositroy(
      cartApi: CartApi(),
    );

    return cartRepository;
  },
);
