import 'package:rchitecture_riverpod/src/features/cart/application/services/cart_service.dart';
import 'package:rchitecture_riverpod/src/features/cart/domain/models/cart.dart';

class WatchCartController {
  WatchCartController({
    required this.cartService,
  });

  final CartService cartService;

  Stream<Cart?> get watch => cartService.watchCart();
}
