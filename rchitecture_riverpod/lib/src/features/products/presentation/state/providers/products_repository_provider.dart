// this is a regualr provider
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/products/data/data_sources/products_api.dart';
import 'package:rchitecture_riverpod/src/features/products/data/repositories/fake_products_repository.dart';

final productsRepositoryProvider = Provider((ref) {
  return FakeProductsRepository(api: ProductsApi());
});
