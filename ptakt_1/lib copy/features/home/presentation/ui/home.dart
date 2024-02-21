import 'package:avtomobile/dj/service.dart';
import 'package:avtomobile/features/home/presentation/controller/home_controller.dart';
import 'package:avtomobile/features/home/presentation/ui/ByID.dart';
import 'package:avtomobile/features/home/presentation/ui/add.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => service<HomeController>()..init(),
      child: _Home()
    );
  }
}

class _Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _search = TextEditingController();
    return Scaffold(
      body: SafeArea(child:
      Column(
        children: [
          TextField(
            controller: _search,
            decoration: InputDecoration(
              labelText: 'Поиск по бренду',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<HomeController>().search(_search.text);
            },
            child: Text('Найти'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: context.watch<HomeController>().carList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(context.watch<HomeController>().carList[index].brandModel),
                        subtitle: Text(
                            "${context.watch<HomeController>().carList[index].categoryQuality}"),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ByID(index: index)),
                            );
                          },
                          child: Text('Подробнее')
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Add()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

