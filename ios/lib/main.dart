import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
      
        ChangeNotifierProvider(
          create: (context) => ItemListProvider(),
          lazy: false,
        ),

        
        ValueListenableProvider<int>.value(
          value: MyValueNotifier(42), 
        ),
      ],
      
      child: MaterialApp(
        initialRoute: '/',
        theme: ThemeData.dark(),
        onGenerateRoute: (settings) {
          if (settings.name == '/') {
            return MaterialPageRoute(
              builder: (context) => ListViewScreen(),
            );
          } else if (settings.name == '/add') {
            return MaterialPageRoute(
              builder: (context) => AddItemScreen(),
            );
          } else if (settings.name == '/edit') {
            if (settings.arguments is Item) {
              final item = settings.arguments as Item;
              return MaterialPageRoute(
                builder: (context) => EditItemScreen(item),
              );
            }
          } else if (settings.name == '/delete') {
            if (settings.arguments is Item) {
              final item = settings.arguments as Item;
              return MaterialPageRoute(
                builder: (context) => DeleteItemScreen(item),
              );
            }
          }
          return null;
        },
      ),
    ),
  );
}

class MyValueNotifier extends ValueNotifier<int> {
  MyValueNotifier(int value) : super(value);

  // Дополнительные методы или свойства, если необходимо
}

class Item {
  String title;
  String description;

  Item({required this.title, required this.description});
}
class ListItemWidget extends StatelessWidget {
  final Item item;

  ListItemWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 99, 99, 99)), // Обводка
        borderRadius: BorderRadius.circular(10.0), // Закругленные углы
        color: Color.fromARGB(255, 63, 63, 63), // Цвет заднего фона
      ),
      margin: EdgeInsets.all(8.0), // Внешний отступ
      child: ListTile(
        key: ValueKey(item),
        title: Text(item.title),
        subtitle: Text(item.description),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/edit',
                  arguments: item,
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/delete',
                  arguments: item,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


class ItemListProvider with ChangeNotifier {
  List<Item> _items = [];

  List<Item> get items => _items;

  void addItem(String title, String description) {
    _items.add(Item(title: title, description: description));
    notifyListeners();
  }

  void reorderItems(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final item = _items.removeAt(oldIndex);
    _items.insert(newIndex, item);
    notifyListeners();
  }

  void editItem(Item item, String newTitle, String newDescription) {
    final index = _items.indexOf(item);
    if (index != -1) {
      _items[index].title = newTitle;
      _items[index].description = newDescription;
      notifyListeners();
    }
  }

  void deleteItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }
}

class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView')),
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
                child: ListItemWidget(item),
              );
            }).toList(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

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
              onTap: () {
                final String title = _titleController.text;
                final String description = _descriptionController.text;
                final itemList =
                    Provider.of<ItemListProvider>(context, listen: false);
                itemList.addItem(title, description);
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child:
                      Text('Добавление', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
                itemList
                    .deleteItem(item); // Добавьте метод для удаления элемента
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
