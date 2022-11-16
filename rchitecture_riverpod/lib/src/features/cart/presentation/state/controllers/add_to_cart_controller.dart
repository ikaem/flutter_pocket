// so we will make it a state notifier class
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/cart/data/dto/cart_raw/cart_raw.dart';
import 'package:rchitecture_riverpod/src/features/cart/data/repositories/cart_repository.dart';
import 'package:rchitecture_riverpod/src/features/cart/domain/models/cart.dart';
import 'package:rchitecture_riverpod/src/features/cart/domain/models/cart_item.dart';
import "package:rchitecture_riverpod/src/features/cart/utils/extensions/cart_extensions.dart";

class AddToCartController extends StateNotifier<AsyncValue<void>> {
  AddToCartController({
    required CartRepository cartRepository,
    required CartItem cartItem,
  }) : super(const AsyncValue<void>.data(null));

  // thgis would actually need to accept a cart item, so we can add it to cart

  final CartRepository cartRepository;
  final CartItem cartItem;

  // we will access this through "notifier" underlying object

  Future<void> oneItem(CartItem item) async {
    state = const AsyncLoading<void>();

    // ok, so here should actually
    // - get current cart
    // - call add on the cart - we could call copy with too
    // - covert it to raw
    // - and pass it to the repository
    // id is irrelevant here
    // this should postentually be retrieved somewhere from the frontend, not from the backend - or is it?
    final CartRaw? cartRaw = await cartRepository.getOne(999);
    // TODO what about this
    if (cartRaw == null) {
      // potentually throw some error, ebcause this cart does not exist
      throw "Some error";
    }

    final Cart cart = Cart.fromCartRaw(cartRaw);

    final updatedCart = Cart.addToCart(item);

// /* WOULD THIS SET ONE JUST OVERWRITE IT? */
    state = await AsyncValue.guard(
      () => cartRepository.setOne(
        CartRaw.fromCart(updatedCart),
      ),
    );
  }
}
