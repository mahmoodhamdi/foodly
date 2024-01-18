class CategoryModel {
  final String id;
  final String title;
  final String value;
  final String imageUrl;
  final String createdAt;
  final String updatedAt;

  CategoryModel({
    required this.id,
    required this.title,
    required this.value,
    required this.imageUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['_id'],
      title: json['title'],
      value: json['value'],
      imageUrl: json['imageUrl'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}
