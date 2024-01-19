class RestaurantModel {
  final String id;
  final String title;
  final String time;
  final String imageUrl;
  final String owner;
  final String code;
  final String logoUrl;
  final int rating;
  final String ratingCount;
  final Map<String, dynamic> coords;
  RestaurantModel({
    required this.id,
    required this.title,
    required this.time,
    required this.imageUrl,
    required this.owner,
    required this.code,
    required this.logoUrl,
    required this.rating,
    required this.ratingCount,
    required this.coords,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      id: json['_id'],
      title: json['title'],
      time: json['time'],
      imageUrl: json['imageUrl'],
      owner: json['owner'],
      code: json['code'],
      logoUrl: json['logoUrl'],
      rating: json['rating'],
      ratingCount: json['ratingCount'],
      coords: json['coords'],
    );
  }
}
