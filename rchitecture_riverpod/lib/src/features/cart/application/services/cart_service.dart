// note that this needs repositories to work with
// also note that it does not requuire controllers - i guess controllers will make use of the service provider that we will make later

import 'package:rchitecture_riverpod/src/features/authentication/data/repositories/auth_repository.dart';
import 'package:rchitecture_riverpod/src/features/cart/data/dto/cart_raw/cart_raw.dart';
import 'package:rchitecture_riverpod/src/features/cart/data/repositories/cart_repository.dart';
import 'package:rchitecture_riverpod/src/features/cart/domain/models/cart.dart';
import 'package:rchitecture_riverpod/src/features/cart/domain/models/cart_item.dart';
import 'package:rchitecture_riverpod/src/features/cart/utils/extensions/cart_extensions.dart';

class CartService {
  CartService({
    required this.authRepository,
    required this.cartRepository,
  });
  final AuthRepository authRepository;
  final CartRepository cartRepository;

  // a function to keep track of the state possibly?
// maybe tis is not needed in the service -
// or it is needed .- we could possibly hold state of the cart in database, and we would then observe it?
  Stream<Cart?> watchCart() {
    // some of this could go into some helper, private method
    final stream = cartRepository.watchOne(999);

// note sure if i should transform data here to be honesgt - but maybe private helper should do that
    final cartStream = stream.map<Cart?>((CartRaw? cartRaw) {
      if (cartRaw == null) return null;

      return Cart.fromCartRaw(cartRaw);
    });

    return cartStream;
  }

  // and now we have methods here
  // these are public
  Future<void> addItem(CartItem item) async {
    // we fetch cart
    // ide irrelevant for this case
    final cart = await _fetchCart(99);

    if (cart == null) {
      // probably good to throw some error that we define somewhere
      throw "Some error that says no cart";
    }

    // update cart
    final updatedCart = cart.addToCart(item);

    await _setCart(updatedCart);
  }

  // we would add bunch of other methods here

  // note this is for fetch cart
  // this will be used locally only in this particular object

  Future<Cart?> _fetchCart(int id) async {
    final user = authRepository.currentUser;

    if (user == null) {
      // here like to local  and return local cart when not logged in
    }

    //  here go remote, and retreive remote cart from remove provider

    // this is the only one i have right now
    // irrelevant now which id it is
    final cart = await cartRepository.getOne(id);

    if (cart == null) return null;

    return Cart.fromCartRaw(cart);
  }

// TODO note sure here if the cart passed in should be raw, or proper - it should probably be proper? or it should probably actually be prepared for backend? bot the controller should not be converting that, and the controller has full cart
  Future<void> _setCart(Cart cart) async {
    // again check if logged in
    final user = authRepository.currentUser;

    if (user == null) {
      // and so on
    }

    await cartRepository.setOne(CartRaw.fromCart(cart));
  }

  // do create something to keep track via stream of cart changes
}
