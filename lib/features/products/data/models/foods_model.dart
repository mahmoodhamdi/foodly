class FoodModel {
  final String id;
  final String title;
  final List<String> foodTags;
  final String code;
  final bool isAvailable;
  final String restaurant;
  final double rating;
  final String ratingCount;
  final String description;
  final double price;
  final List<Map<String, dynamic>> additives;
  final String imageUrl;
  final int v;
  final String category;
  final String time;

  FoodModel({
    required this.id,
    required this.title,
    required this.foodTags,
    required this.code,
    required this.isAvailable,
    required this.restaurant,
    required this.rating,
    required this.ratingCount,
    required this.description,
    required this.price,
    required this.additives,
    required this.imageUrl,
    required this.v,
    required this.category,
    required this.time,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
      id: json['_id'],
      title: json['title'],
      foodTags: List<String>.from(json['foodTags']),
      code: json['code'],
      isAvailable: json['isAvailable'],
      restaurant: json['restaurant'],
      rating: json['rating'].toDouble(),
      ratingCount: json['ratingCount'],
      description: json['description'],
      price: json['price'].toDouble(),
      additives: List<Map<String, dynamic>>.from(json['additives']),
      imageUrl: json['imageUrl'],
      v: json['__v'],
      category: json['category'],
      time: json['time'],
    );
  }
}


