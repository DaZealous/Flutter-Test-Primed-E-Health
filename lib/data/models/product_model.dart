import 'package:flutter_assessment/data/models/review_model.dart';

class ProductModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final List<String> images;
  final double rating;
  final List<ReviewModel> reviews;
  final int stock;
  final String category;
  final String brand;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.images,
    required this.rating,
    required this.reviews,
    required this.stock,
    required this.category,
    required this.brand,
  });

  // Factory constructor to create a Product from JSON
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      images: List<String>.from(json['images']),
      rating: json['rating'].toDouble(),
      reviews: (json['reviews'] as List).map((review) => ReviewModel.fromJson(review)).toList(),
      stock: json['stock'],
      category: json['category'],
      brand: json['brand'],
    );
  }
}
