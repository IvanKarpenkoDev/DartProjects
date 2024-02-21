import 'package:avtomobile/features/home/data/data_source/home_local_data_source.dart';
import 'package:avtomobile/features/home/data/mappers/car_mapper.dart';
import 'package:avtomobile/features/home/data/model/car_model.dart';
import 'package:avtomobile/features/home/domain/entity/car_entity.dart';
import 'package:avtomobile/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository{
final  HomeLocalDataSource dataSource;
  HomeRepositoryImpl({required this.dataSource});
  @override
  Future<List<CarEntity>> getAllDataCar() async{
    final data = await dataSource.getAllDataCar();
    return data.map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> addDataCar(CarModel carModel) async{
    await dataSource.addDataCar(carModel);
  }

  @override
  Future<void> putDataCar(int key, CarModel carModel) async{
    await dataSource.putDataCar(key, carModel);
  }

  @override
  Future<CarEntity?> getCarById(int id) async {
    final data = await dataSource.getCarById(id);
    return data?.toEntity();
  }

  @override
  Future<List<CarEntity>> searchCarByBrand(String brand) async {
    final data = await dataSource.searchCarByBrand(brand);
    return data.map((e) => e.toEntity()).toList();
  }
}