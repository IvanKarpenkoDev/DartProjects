import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class CarModel extends HiveObject {
  @HiveField(0)
  final String brand;

  @HiveField(1)
  final String model;

  @HiveField(2)
  final String category;

  @HiveField(3)
  final String quality;

  CarModel({
    required this.brand,
    required this.model,
    required this.category,
    required this.quality,
  });

  factory CarModel.fromJson(Map<String, dynamic> json){
    return CarModel(
    brand: json['brand'],
    model: json['model'],
    category: json['category'],
    quality: json['quality']);
  }
}