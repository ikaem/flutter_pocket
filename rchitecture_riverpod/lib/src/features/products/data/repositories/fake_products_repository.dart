import 'package:rchitecture_riverpod/src/features/products/data/data_sources/products_api.dart';
import 'package:rchitecture_riverpod/src/features/products/data/dto/product_raw/product_raw.dart';
import 'package:rchitecture_riverpod/src/features/products/data/repositories/products_repository.dart';

class FakeProductsRepository implements ProductsRepository {
  FakeProductsRepository({
    required this.api,
  });

  ProductsApi api;

  @override
  Future<ProductRaw?> getOne(int id) async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    return api.product(id: id);
  }

  @override
  Future<List<ProductRaw>> getAll() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    return api.products();
  }
}
