import 'package:avtomobile/dj/service.dart';
import 'package:avtomobile/features/home/data/model/car_model.dart';
import 'package:avtomobile/features/home/presentation/controller/home_controller.dart';
import 'package:avtomobile/features/home/presentation/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Update extends StatelessWidget {
  final int index;

  const Update({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => service<HomeController>()..id(index),
      child: _Update(index: index),
    );
  }
}

class _Update extends StatelessWidget {
  final int index;

  const _Update({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final car = context.watch<HomeController>().car;
    final _brandController = TextEditingController(text: car?.brand);
    final _modelController = TextEditingController(text: car?.model);
    final _categoryController = TextEditingController(text: car?.category);
    final _qualityController = TextEditingController(text: car?.quality);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: _brandController,
              decoration: InputDecoration(
                labelText: 'Марка',
              ),
            ),
            TextField(
              controller: _modelController,
              decoration: InputDecoration(
                labelText: 'Модель',
              ),
            ),
            TextField(
              controller: _categoryController,
              decoration: InputDecoration(
                labelText: 'Категория',
              ),
            ),
            TextField(
              controller: _qualityController,
              decoration: InputDecoration(
                labelText: 'Качество',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<HomeController>().put(index, CarModel(
                  brand: _brandController.text,
                  model: _modelController.text,
                  category: _categoryController.text,
                  quality: _qualityController.text,
                ));
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              child: Text('Изменить'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              child: Text('Назад'),
            ),
          ],
        ),
      ),
    );
  }
}
