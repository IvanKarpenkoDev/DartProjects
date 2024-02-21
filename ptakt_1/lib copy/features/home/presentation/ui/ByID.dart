import 'package:avtomobile/dj/service.dart';
import 'package:avtomobile/features/home/presentation/controller/home_controller.dart';
import 'package:avtomobile/features/home/presentation/ui/home.dart';
import 'package:avtomobile/features/home/presentation/ui/update.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ByID extends StatelessWidget {
  final int index;

  const ByID({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => service<HomeController>()..id(index),
      child: _ByID(index: index),
    );
  }
}

class _ByID extends StatelessWidget {
  final int index;

  const _ByID({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final car = context.watch<HomeController>().car;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(car?.brandModel ?? ''),
            Text(car?.categoryQuality ?? ''),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Update(index: index)),
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

