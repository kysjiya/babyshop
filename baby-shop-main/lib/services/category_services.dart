// lib/services/category_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/category_model.dart';

Future<List<CategoryModel>> fetchCategories() async {
  final response = await http.get(
    Uri.parse('https://rahimcodevibes.com/baby-shop/api/categories'),
  );

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    final List<dynamic> categoriesJson = data['data'];

    return categoriesJson.map((json) => CategoryModel.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load categories');
  }
}
