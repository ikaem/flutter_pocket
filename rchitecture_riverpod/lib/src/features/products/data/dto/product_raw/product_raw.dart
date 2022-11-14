// this is just mock - raw should be generated with freezed
class ProductRaw {
  const ProductRaw({
    required this.id,
    required this.product_name,
    required this.product_category,
    required this.product_price,
    required this.product_image_url,
  });
  final int id;
  final String product_name;
  final String product_category;
  final double product_price;
  final String product_image_url;
}
