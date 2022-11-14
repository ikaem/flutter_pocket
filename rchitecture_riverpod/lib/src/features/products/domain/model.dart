import 'package:rchitecture_riverpod/src/features/products/data/dto/product_raw/product_raw.dart';

class Product {
  const Product(
      {required this.id,
      required this.name,
      required this.category,
      required this.price,
      required this.imageUrl});
  final int id;
  final String name;
  final String category;
  final double price;
  final String imageUrl;

  factory Product.fromRaw(ProductRaw raw) {
    return Product(
      id: raw.id,
      name: raw.product_name,
      category: raw.product_category,
      price: raw.product_price,
      imageUrl: raw.product_image_url,
    );
  }
}
