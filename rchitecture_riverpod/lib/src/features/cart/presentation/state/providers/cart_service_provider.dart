import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/authentication/data/repositories/auth_repository.dart';
import 'package:rchitecture_riverpod/src/features/authentication/presentation/state/providers/auth_repository_provider.dart';
import 'package:rchitecture_riverpod/src/features/cart/application/services/cart_service.dart';
import 'package:rchitecture_riverpod/src/features/cart/data/repositories/cart_repository.dart';
import 'package:rchitecture_riverpod/src/features/cart/presentation/state/providers/cart_repository_provider.dart';

final cartServiceProvider = Provider<CartService>((ref) {
  final AuthRepository authRepository = ref.watch(authRepositoryProvider);
  final CartRepository cartRepository = ref.watch(cartRepositoryProvider);

  return CartService(
    authRepository: authRepository,
    cartRepository: cartRepository,
  );
});
