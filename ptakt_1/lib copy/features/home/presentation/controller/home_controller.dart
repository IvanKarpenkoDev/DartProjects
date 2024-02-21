
import 'package:avtomobile/features/home/data/model/car_model.dart';
import 'package:avtomobile/features/home/domain/entity/car_entity.dart';
import 'package:avtomobile/features/home/domain/use_case/home_use_case.dart';
import 'package:flutter/material.dart';

class HomeController with ChangeNotifier {
  final HomeUseCase useCase;

  HomeController(this.useCase);

  List<CarEntity> carList = [];

  CarEntity? car;

  void init() async {
    carList = await useCase.call();
    notifyListeners();
  }

  void add(CarModel carModel) async {
    await useCase.callAdd(carModel);
    notifyListeners();
  }

  void put(int key, CarModel carModel) async {
    await useCase.callPut(key, carModel);
    notifyListeners();
  }

  void id(int id) async {
    car = await useCase.callByID(id);
    notifyListeners();
  }

  void search(String brand) async {
    carList = await useCase.callByBrand(brand);
    notifyListeners();
  }
}