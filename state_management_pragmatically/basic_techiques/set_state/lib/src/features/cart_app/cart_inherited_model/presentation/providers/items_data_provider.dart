import 'package:flutter/material.dart';
import 'package:set_state/src/data/data_sources/cart_items/data_source.dart';
import 'package:set_state/src/domain/entities/cart_item/entity.dart';

class ItemsInheritedModelDataProvider extends StatefulWidget {
  const ItemsInheritedModelDataProvider({
    super.key,
    required this.child,
  });

  final Widget child;

  // this will get data
  static ItemsInheritedModelDataProviderState of(BuildContext context) {
    final ItemsInheritedModel? result =
        context.findAncestorWidgetOfExactType<ItemsInheritedModel>();

    assert(result != null, "No ItemsInheritedWidget found in context");

    return result!.data;
  }

  @override
  State<ItemsInheritedModelDataProvider> createState() =>
      ItemsInheritedModelDataProviderState();
}

class ItemsInheritedModelDataProviderState
    extends State<ItemsInheritedModelDataProvider> {
  final List<ItemEntity> _productItems = getProductItems();
  final List<ItemEntity> _cartItems = [];

  List<ItemEntity> get productItems => _productItems;
  List<ItemEntity> get cartItems => _cartItems;

  void addToCart(ItemEntity item) {
    _cartItems.add(item);
    // TODO maybe this is good to avoid, in order to not in danger of rebuilding
    setState(() {});
  }

  void removeFromCart(ItemEntity item) {
    _cartItems.remove(item);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ItemsInheritedModel(
      data: this,
      child: widget.child,
    );
  }
}

// class ItemsInheritedModel extends InheritedModel<List<ItemEntity>> {
class ItemsInheritedModel extends InheritedModel<int> {
  const ItemsInheritedModel({
    super.key,
    required super.child,
    required this.data,
  });

  final ItemsInheritedModelDataProviderState data;

  @override
  bool updateShouldNotify(ItemsInheritedModel oldWidget) {
    // we only want to rebuild when child changes - not when any fields in the inherite widget change
    // because of this approach, we ween to set state in cosnuming widgets in order to rebuild
    if (oldWidget == child) return false;

    return true;
  }

  @override
  bool updateShouldNotifyDependent(
    covariant InheritedModel<int> oldWidget,
    // covariant InheritedModel<List<ItemEntity>> oldWidget,
    // Set<List<ItemEntity>> dependencies,
    Set<int> dependencies,
  ) {
    if (dependencies.contains(1)) return true;

    return false;
  }
}
