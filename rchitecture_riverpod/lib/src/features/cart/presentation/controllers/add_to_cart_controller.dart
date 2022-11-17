// so we will make it a state notifier class
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/cart/application/services/cart_service.dart';
import 'package:rchitecture_riverpod/src/features/cart/domain/models/cart_item.dart';

class AddToCartController extends StateNotifier<AsyncValue<void>> {
  AddToCartController({
    // not needed here - isntead, we actually get cart service instead
    // required this.cartRepository,
    required this.cartService,
    required this.cartItem,
  }) : super(const AsyncValue<void>.data(null));

  // thgis would actually need to accept a cart item, so we can add it to cart

  // final CartRepository cartRepository;
  final CartService cartService;
  final CartItem cartItem;

  Future<void> oneItem(CartItem item, int quantity) async {
    state = const AsyncLoading<void>();

    final updatedItem = item.copyWith(
      quantity: quantity,
    );

    state = await AsyncValue.guard(() async {
      await cartService.addItem(updatedItem);
    });
  }

  // we will access this through "notifier" underlying object
  // this controller would not actually do adding stuff to cart by calling repositories
  // it would actually call a service, to do it for the cotnroller
  // because, the service has access to auth repo, and it knows which cart to use

//   Future<void> oneItem(CartItem item) async {
//     state = const AsyncLoading<void>();

//     // ok, so here should actually
//     // - get current cart
//     // - call add on the cart - we could call copy with too
//     // - covert it to raw
//     // - and pass it to the repository
//     // id is irrelevant here
//     // this should postentually be retrieved somewhere from the frontend, not from the backend - or is it?
//     final CartRaw? cartRaw = await cartRepository.getOne(999);
//     // TODO what about this
//     if (cartRaw == null) {
//       // potentually throw some error, ebcause this cart does not exist
//       throw "Some error";
//     }

//     final Cart cart = Cart.fromCartRaw(cartRaw);

//     // TODO probably better logic is needed here to know if we already have this item inside

//     final updatedCart = cart.addToCart(item);

// // /* WOULD THIS SET ONE JUST OVERWRITE IT? */
//     state = await AsyncValue.guard(
//       () => cartRepository.setOne(
//         CartRaw.fromCart(updatedCart),
//       ),
//     );
//   }
}
