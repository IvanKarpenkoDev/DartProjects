
import 'package:avtomobile/features/home/data/model/car_model.dart';
import 'package:avtomobile/features/home/domain/entity/car_entity.dart';
import 'package:avtomobile/features/home/domain/repository/home_repository.dart';

class HomeUseCase {
  final HomeRepository _repository;

  HomeUseCase(this._repository);

  Future<List<CarEntity>> call() async {
    return _repository.getAllDataCar();
  }

  Future<void> callAdd(CarModel carModel) async {
    _repository.addDataCar(carModel);
  }

  Future<void> callPut(int key, CarModel carModel) async {
    _repository.putDataCar(key, carModel);
  }

  Future<CarEntity?> callByID(int id) async {
    return _repository.getCarById(id);
  }

  Future<List<CarEntity>> callByBrand(String brand) async {
    return _repository.searchCarByBrand(brand);
  }
}