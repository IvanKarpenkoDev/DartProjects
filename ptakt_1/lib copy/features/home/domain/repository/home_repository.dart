
import 'package:avtomobile/features/home/data/model/car_model.dart';
import 'package:avtomobile/features/home/domain/entity/car_entity.dart';

abstract interface class HomeRepository{

  Future<List<CarEntity>> getAllDataCar();

  Future<void> addDataCar(CarModel carModel);

  Future<void> putDataCar(int key, CarModel carModel);

  Future<CarEntity?> getCarById(int id);

  Future<List<CarEntity>> searchCarByBrand(String brand);
}