import 'package:cloud_firestore/cloud_firestore.dart';

class CarModel {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final Timestamp createdAt;

  CarModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'createdAt': createdAt,
    };
  }

  factory CarModel.fromMap(Map<String, dynamic> map) {
    return CarModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      price: (map['price'] ?? 0).toDouble(),
      imageUrl: map['imageUrl'] ?? '',
      createdAt: map['createdAt'] ?? Timestamp.now(),
    );
  }
}
