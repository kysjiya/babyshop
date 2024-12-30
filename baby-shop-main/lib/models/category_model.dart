// lib/models/category_model.dart
class CategoryModel {
  final int id;
  final String title;
  final String? description;
  final String? imageUrl;

  CategoryModel({
    required this.id,
    required this.title,
    this.description,
    this.imageUrl,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      imageUrl: json['image_url'],
    );
  }
}
