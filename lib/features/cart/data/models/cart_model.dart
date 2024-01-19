class CartModel {
  final String id;
  final String userId;
  final ProductModel product;
  final List<String> additives;
  final String instructions;
  final double totalPrice;
  final int quantity;
  final int v;

  CartModel({
    required this.id,
    required this.userId,
    required this.product,
    required this.additives,
    required this.instructions,
    required this.totalPrice,
    required this.quantity,
    required this.v,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      id: json['_id'],
      userId: json['userId'],
      product: ProductModel.fromJson(json['productId']),
      additives: List<String>.from(json['additives']),
      instructions: json['instructions'],
      totalPrice: json['totalPrice'].toDouble(),
      quantity: json['quantity'],
      v: json['__v'],
    );
  }
}

class ProductModel {
  final String id;
  final String title;
  final String restaurant;
  final double rating;
  final String ratingCount;
  final List<String> imageUrl;

  ProductModel({
    required this.id,
    required this.title,
    required this.restaurant,
    required this.rating,
    required this.ratingCount,
    required this.imageUrl,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['_id'],
      title: json['title'],
      restaurant: json['restaurant'],
      rating: json['rating'].toDouble(),
      ratingCount: json['ratingCount'],
      imageUrl: List<String>.from(json['imageUrl']),
    );
  }
}
