import 'package:avtomobile/features/home/data/model/car_model.dart';
import 'package:avtomobile/features/home/domain/entity/car_entity.dart';

extension CarMapper on CarModel {
  CarEntity toEntity() {
    return CarEntity(
      brandModel: '$brand $model',
      categoryQuality: '$category $quality',
      brand: brand,
      model: model,
      category: category,
      quality: quality,
    );
  }
}