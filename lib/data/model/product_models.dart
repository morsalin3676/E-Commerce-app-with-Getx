class ProductModel {
  final String image;
  final String title;
  final String brand;
  final double price;
  final double rating;
  final String name;
  final double oldPrice;
  final String reviewCount;
   bool isFavorite;

  ProductModel({
    required this.image,
    required this.title,
    required this.brand,
    required this.price,
    required this.rating,
    this.isFavorite = false,
    required this.name, required this.oldPrice, required this.reviewCount,
  });
}