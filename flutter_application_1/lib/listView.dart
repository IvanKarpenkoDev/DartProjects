import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Item {
  final String title;
  final String description;

  Item({required this.title, required this.description});
}

class ItemListProvider extends ChangeNotifier {
  List<Item> _items = [
    Item(title: 'Item 1', description: 'Description 1'),
    Item(title: 'Item 2', description: 'Description 2'),
    // Другие элементы
  ];

  List<Item> get items => _items;

  void reorderItems(int oldIndex, int newIndex) {
    final item = _items.removeAt(oldIndex);
    _items.insert(newIndex, item);
    notifyListeners();
  }
}


class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItemListProvider(),
      child: Scaffold(
        appBar: AppBar(title: Text('ListView Navigation')),
        body: Consumer<ItemListProvider>(
          builder: (context, itemList, child) {
            return ReorderableListView(
              onReorder: (oldIndex, newIndex) {
                itemList.reorderItems(oldIndex, newIndex);
              },
              children: itemList.items
                  .map((item) => ListTile(
                        key: ValueKey(item),
                        title: Text(item.title),
                        subtitle: Text(item.description),
                      ))
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}

