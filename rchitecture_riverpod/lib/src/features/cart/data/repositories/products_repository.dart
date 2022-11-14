import 'package:rchitecture_riverpod/src/features/products/data/dto/product_raw/product_raw.dart';

abstract class ProductsRepository {
  Future<ProductRaw?> getOne(int id);
  Future<List<ProductRaw>> getAll();
}
