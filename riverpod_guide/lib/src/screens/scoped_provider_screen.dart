import 'package:flutter/cupertino.dart';
import 'package:riverpod_guide/src/ui/widgets/product_list.dart';

class ScopedProvidersScreen extends StatelessWidget {
  static const routeName = "scoped-provider";

  const ScopedProvidersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: const ProductList(),
      ),
    );
  }
}
