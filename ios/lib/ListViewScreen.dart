import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class ListViewScreen extends StatelessWidget {
  void exitApp() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('username');
    await prefs.remove('password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        leading: IconButton(
          icon: Icon(Icons.exit_to_app_outlined),
          onPressed: () async => {
           exitApp(),
            Navigator.pushNamed(context, '/login')
          },
        ),
      ),
      body: Consumer<ItemListProvider>(
        builder: (context, itemList, child) {
          return ReorderableListView(
            onReorder: (oldIndex, newIndex) {
              itemList.reorderItems(oldIndex, newIndex);
            },
            children: itemList.items.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;

              return ReorderableDelayedDragStartListener(
                index: index,
                key: ValueKey(item),
                child: ListItemWidget(item.value),
              );
            }).toList(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 237, 237, 237),
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
