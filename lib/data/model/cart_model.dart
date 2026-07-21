class CartModel {
  final int id;
  final String name;
  final String brand;
  final String image;
  final String color;
  final String size;
  final double price;

  int quantity;

  CartModel({
    required this.id,
    required this.name,
    required this.brand,
    required this.image,
    required this.color,
    required this.size,
    required this.price,
    this.quantity = 1,
  });

  double get totalPrice => quantity * price;
}