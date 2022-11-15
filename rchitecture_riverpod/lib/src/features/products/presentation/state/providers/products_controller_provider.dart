// this wuld be state notifier provider

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/products/data/repositories/products_repository.dart';
import 'package:rchitecture_riverpod/src/features/products/domain/model.dart';
import 'package:rchitecture_riverpod/src/features/products/presentation/controllers/products_controller.dart';
import 'package:rchitecture_riverpod/src/features/products/presentation/state/providers/products_repository_provider.dart';

// NOTE THGAT HTIS HAS TO BE ASYNC VALUE - WE ARE RETURNING ASYNC VALUE
final productsControllerProvider = StateNotifierProvider.autoDispose<
    ProductsController, AsyncValue<List<Product>>>((ref) {
  // now we have to actually get the controller async value - nto the notifier itself, mind you
  final ProductsRepository productsRepository =
      ref.watch(productsRepositoryProvider);

  return ProductsController(productsRepository: productsRepository);
});
