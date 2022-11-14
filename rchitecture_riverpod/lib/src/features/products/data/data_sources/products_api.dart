import 'package:rchitecture_riverpod/src/features/products/data/dto/product_raw/product_raw.dart';
import 'package:rchitecture_riverpod/src/utils/extensions/iterable.dart';

class ProductsApi {
// this is fake - usually this would return Uri
  List<ProductRaw> products() {
    return fakeProducts;
  }

  ProductRaw? product({required int id}) {
    return fakeProducts.firstWhereOrNull((e) => e.id == id);
  }
}

List<ProductRaw> fakeProducts = [
  const ProductRaw(
    id: 1,
    product_name: "product_name 1",
    product_category: "product_category 1",
    product_price: 1.0,
    product_image_url: "https://source.unsplash.com/random/900%C3%97700/?tool",
  ),
  const ProductRaw(
    id: 2,
    product_name: "product_name 2",
    product_category: "product_category 1",
    product_price: 1.0,
    product_image_url: "https://source.unsplash.com/random/900%C3%97700/?tool",
  ),
  const ProductRaw(
    id: 3,
    product_name: "product_name 3",
    product_category: "product_category 12",
    product_price: 1.0,
    product_image_url: "https://source.unsplash.com/random/900%C3%97700/?tool",
  ),
  const ProductRaw(
    id: 4,
    product_name: "product_name 4",
    product_category: "product_category 12",
    product_price: 1.0,
    product_image_url: "https://source.unsplash.com/random/900%C3%97700/?tool",
  ),
  const ProductRaw(
    id: 5,
    product_name: "product_name 15",
    product_category: "product_category 13",
    product_price: 1.0,
    product_image_url: "https://source.unsplash.com/random/900%C3%97700/?tool",
  ),
  const ProductRaw(
    id: 6,
    product_name: "product_name 16",
    product_category: "product_category 13",
    product_price: 1.0,
    product_image_url: "https://source.unsplash.com/random/900%C3%97700/?tool",
  ),
  const ProductRaw(
    id: 7,
    product_name: "product_name 17",
    product_category: "product_category 14",
    product_price: 1.0,
    product_image_url: "https://source.unsplash.com/random/900%C3%97700/?tool",
  ),
];
