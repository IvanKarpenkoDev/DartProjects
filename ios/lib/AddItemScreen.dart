import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class AddItemScreen extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Добавление')),
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
              onTap: () async {
                final String title = _titleController.text;
                final String description = _descriptionController.text;

                // Получаем экземпляр SharedPreferences
                final prefs = await SharedPreferences.getInstance();

                // Сохраняем данные
                prefs.setString('title', title);
                prefs.setString('description', description);

                final itemList = Provider.of<ItemListProvider>(context, listen: false);
                itemList.addItem(title, description);
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text('Добавление', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}