import 'package:avtomobile/dj/service.dart';
import 'package:avtomobile/features/home/data/model/car_model.dart';
import 'package:avtomobile/features/home/presentation/controller/home_controller.dart';
import 'package:avtomobile/features/home/presentation/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => service<HomeController>()..init(),
      child: _Add()
    );
  }
}

class _Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _brandController = TextEditingController();
    final _modelController = TextEditingController();
    final _categoryController = TextEditingController();
    final _qualityController = TextEditingController();
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
                context.read<HomeController>().add(CarModel(
                  brand: _brandController.text,
                  model: _modelController.text,
                  category: _categoryController.text,
                  quality: _qualityController.text,
                ));
              },
              child: Text('Добавить'),
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
