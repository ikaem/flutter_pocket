// questions here is should this be accessing the cart provider itself
// lets say yes - if it does, other features only have to access this
// but then, since we will be using some services, maybe lets now do that
// so lets just make a widget that returns some icon with number
// there is some badges package for this

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartIconWithItemsAmount extends StatelessWidget {
  const CartIconWithItemsAmount({
    super.key,
    required this.itemsAmount,
  });

  final int itemsAmount;

  @override
  Widget build(BuildContext context) {
    // we can make it with stacked it seems
    return GestureDetector(
      onTap: () {
        // this is navigating to cart screen now
      },
      child: Stack(
        children: [
          const Icon(Icons.shopping_basket),
          Positioned(
              top: 4,
              right: -4,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text(
                  "3",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ))
        ],
      ),
    );
  }
}
