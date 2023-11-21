import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'AddItemScreen.dart';
import 'DeleteItemScreen.dart';
import 'EditItemScreen.dart';
import 'ListViewScreen.dart';

Future<void> main() async {
  await initApp(); // Initialize the app
}

Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ItemAdapter()); // Register your ItemAdapter

  final prefs = await SharedPreferences.getInstance();


  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ItemListProvider(),
          lazy: false,
        ),
        Provider<MyItemNotifier>(
          create: (context) => MyItemNotifier(
              Item(title: 'Default Name', description: 'Default Description')),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        initialRoute:  '/', // Check if user is logged in
        routes: {
          '/': (context) => ListViewScreen(),
          '/add': (context) => AddItemScreen(),
          '/edit': (context) {
            final item = ModalRoute.of(context)!.settings.arguments as Item;
            return EditItemScreen(item);
          },
          '/delete': (context) {
            final item = ModalRoute.of(context)!.settings.arguments as Item;
            return DeleteItemScreen(item);
          },
        },
      ),
    ),
  );
}
class MyItemNotifier extends ValueNotifier<Item> {
  MyItemNotifier(Item value) : super(value);
}




class ItemAdapter extends TypeAdapter<Item> {
  @override
  final int typeId = 1; // Use the same type ID you used in your Item class

  @override
  Item read(BinaryReader reader) {
    return Item(
      title: reader.readString(),
      description: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, Item obj) {
    writer.writeString(obj.title);
    writer.writeString(obj.description);
  }
}

@HiveType(typeId: 1)
class Item {
  @HiveField(0)
  String title;

  @HiveField(1)
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
        border: Border.all(color: Color.fromARGB(255, 99, 99, 99)),
        borderRadius: BorderRadius.circular(10.0),
        color: Color.fromARGB(255, 63, 63, 63),
      ),
      margin: EdgeInsets.all(8.0),
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
  late Box<Item> _itemsBox;
  List<MyItemNotifier> _items = [];

  List<MyItemNotifier> get items => _items;

  ItemListProvider() {
    initHive();
  }

  Future<void> initHive() async {
    await Hive.initFlutter();
    _itemsBox = await Hive.openBox<Item>('itemsBox');
    loadDataFromHive();
  }

  void loadDataFromHive() {
    _items = _itemsBox.values.map((item) => MyItemNotifier(item)).toList();
    notifyListeners();
  }

  Future<void> addItem(String title, String description) async {
    final newItem = Item(title: title, description: description);
    final myItem = MyItemNotifier(newItem);
    await _itemsBox.add(newItem);
    _items.add(myItem);
    notifyListeners();
  }

  void reorderItems(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final item = _items.removeAt(oldIndex);
    _items.insert(newIndex, item);
    _itemsBox.putAll(Map.fromIterable(_items,
        key: (item) => _items.indexOf(item), value: (item) => item));
    notifyListeners();
  }

void editItem(Item item, String newTitle, String newDescription) {
  final index = _items.indexWhere((notifier) => notifier.value == item);
  if (index != -1) {
    final updatedItem = item
      ..title = newTitle
      ..description = newDescription;
    final updatedNotifier = MyItemNotifier(updatedItem);
    _items[index] = updatedNotifier;
    _itemsBox.putAt(index, updatedItem); // Update the item in Hive at the specified index
    notifyListeners();
  }
}


  void deleteItem(Item item) {
    final notifier = _items.firstWhere((notifier) => notifier.value == item);
    final index = _items.indexOf(notifier);

    if (index != -1) {
      _items.removeAt(index);
      _itemsBox
          .deleteAt(index); // Delete the item from Hive at the specified index
      notifyListeners();
    }
  }
}
