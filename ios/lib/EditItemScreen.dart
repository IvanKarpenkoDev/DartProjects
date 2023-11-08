import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class EditItemScreen extends StatelessWidget {
  final Item item;

  EditItemScreen(this.item);

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _titleController.text = item.title;
    _descriptionController.text = item.description;

    return Scaffold(
      appBar: AppBar(title: Text('Изменение')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Заголовок'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Описание'),
            ),
            SizedBox(height: 32.0),
            GestureDetector(
              onTap: () {
                final String title = _titleController.text;
                final String description = _descriptionController.text;
                final itemList =
                    Provider.of<ItemListProvider>(context, listen: false);
                itemList.editItem(item, title, description);
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text('Сохранить изменения',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}