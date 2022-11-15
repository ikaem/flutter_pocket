import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/products/data/repositories/products_repository.dart';
import 'package:rchitecture_riverpod/src/features/products/domain/model.dart';
import 'package:rchitecture_riverpod/src/utils/exceptions/api_exception/api_exception.dart';

class ProductsController extends StateNotifier<AsyncValue<List<Product>>> {
  ProductsController({
    required this.productsRepository,
  }) : super(const AsyncValue.loading()) {
    loadAll();
  }

  final ProductsRepository productsRepository;

  Future<void> loadAll() async {
// TODO this would be with guard
    // state = const AsyncLoading();

    // state = await AsyncValue.guard(() async {
    //   // NOTE TAHT FETGCH HAS TO BE HERE, FOR THE GUARD TO CATCH POTENTIAL ERRORS
    //   final productsRaw = await productsRepository.getAll();

    //   final products = productsRaw.map((raw) {
    //     return Product.fromRaw(raw);
    //   }).toList();

    //   return products;
    // });

    try {
      state = const AsyncValue.loading();

      final productsRaw = await productsRepository.getAll();
      state = AsyncValue.data(productsRaw.map(Product.fromRaw).toList());
    } on ApiException catch (e) {
      // TODO WE DONT NEED TO DO THIS IF WE USE THE GUARD
      state = e.asAsyncValue();
    }
  }
}
