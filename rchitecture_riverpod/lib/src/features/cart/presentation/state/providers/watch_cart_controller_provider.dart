import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/cart/application/services/cart_service.dart';
import 'package:rchitecture_riverpod/src/features/cart/domain/models/cart.dart';
import 'package:rchitecture_riverpod/src/features/cart/presentation/controllers/watch_cart_controller.dart';
import 'package:rchitecture_riverpod/src/features/cart/presentation/state/providers/cart_service_provider.dart';

final watchCartControllerProvider = StreamProvider.autoDispose<Cart?>((ref) {
  // ok, so here we need the service

  final CartService cartService = ref.watch(cartServiceProvider);

  return WatchCartController(cartService: cartService).watch;
});
