import 'package:avtomobile/features/home/data/model/car_model.dart';
import 'package:hive/hive.dart';

abstract interface class HomeLocalDataSource {
  Future<List<CarModel>> getAllDataCar();

  Future<void> addDataCar(CarModel carModel);

  Future<void> putDataCar(int key, CarModel carModel);

  Future<CarModel?> getCarById(int id);

  Future<List<CarModel>> searchCarByBrand(String brand);
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  late Box<CarModel> _box;

  @override
  Future<List<CarModel>> getAllDataCar() async {
    _box = await Hive.openBox<CarModel>('cars');
    return _box.values.toList();
  }

  @override
  Future<void> addDataCar(CarModel carModel) async {
    _box.add(carModel);
  }

  @override
  Future<void> putDataCar(int key, CarModel carModel) async {
    _box.put(key, carModel);
  }

  @override
  Future<CarModel?> getCarById(int id) async {
    return _box.get(id);
  }

  Future<List<CarModel>> searchCarByBrand(String brand) async {
    _box = await Hive.openBox<CarModel>('cars');
    return _box.values.where((element) => element.brand.contains(brand)).toList();
  }
}
