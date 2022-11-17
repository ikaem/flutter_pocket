import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/cart/application/services/cart_service.dart';
import 'package:rchitecture_riverpod/src/features/cart/domain/models/cart_item.dart';
import 'package:rchitecture_riverpod/src/features/cart/presentation/controllers/add_to_cart_controller.dart';
import 'package:rchitecture_riverpod/src/features/cart/presentation/state/providers/cart_service_provider.dart';

final addToCartControllerProvider = StateNotifierProvider.autoDispose
    .family<AddToCartController, AsyncValue<void>, CartItem>((
  ref,
  item,
) {
  final CartService cartService = ref.watch(cartServiceProvider);

  return AddToCartController(
    cartService: cartService,
    cartItem: item,
  );
});
