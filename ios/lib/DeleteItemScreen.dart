

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class DeleteItemScreen extends StatelessWidget {
  final Item item;

  DeleteItemScreen(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Удаление')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Вы уверены что хотите удалить item?'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                final itemList =
                    Provider.of<ItemListProvider>(context, listen: false);
                itemList.deleteItem(item);
                Navigator.pop(context);
              },
              child: Text('Удалить'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Отмена'),
            ),
          ],
        ),
      ),
    );
  }
}
