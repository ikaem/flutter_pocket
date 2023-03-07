import 'package:flutter/material.dart';
import 'package:set_state/src/data/data_sources/cart_items/data_source.dart';
import 'package:set_state/src/domain/entities/cart_item/entity.dart';

class ItemsDataProvider extends StatefulWidget {
  const ItemsDataProvider({
    super.key,
    required this.child,
  });

  final Widget child;

  // this will get data
  static ItemsDataProviderState of(BuildContext context) {
    final ItemsInheritedWidget? result =
        context.findAncestorWidgetOfExactType<ItemsInheritedWidget>();

    assert(result != null, "No ItemsInheritedWidget found in context");

    return result!.data;
  }

  @override
  State<ItemsDataProvider> createState() => ItemsDataProviderState();
}

class ItemsDataProviderState extends State<ItemsDataProvider> {
  final List<ItemEntity> _productItems = getProductItems();
  final List<ItemEntity> _cartItems = [];

  List<ItemEntity> get productItems => _productItems;
  List<ItemEntity> get cartItems => _cartItems;

  void addToCart(ItemEntity item) {
    _cartItems.add(item);
    // TODO maybe this is good to avoid, in order to not in danger of rebuilding
    // setState(() {});
  }

  void removeFromCart(ItemEntity item) {
    _cartItems.remove(item);
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ItemsInheritedWidget(
      data: this,
      child: widget.child,
    );
  }
}

class ItemsInheritedWidget extends InheritedWidget {
  const ItemsInheritedWidget({
    super.key,
    required super.child,
    required this.data,
  });

  final ItemsDataProviderState data;

  @override
  bool updateShouldNotify(ItemsInheritedWidget oldWidget) {
    // we only want to rebuild when child changes - not when any fields in the inherite widget change
    // because of this approach, we ween to set state in cosnuming widgets in order to rebuild
    if (oldWidget == child) return false;

    return true;
  }
}
