import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RestaurantPage extends StatefulWidget {
  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
 late List<Restaurant> restaurants = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response =
        await http.get(Uri.parse('http://172.20.10.4/restaurants/get'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      setState(() {
        restaurants = data.map((json) => Restaurant.fromJson(json)).toList();
      });
    } else {
      print('Failed to load data: ${response.statusCode}');
      // Можно добавить обработку ошибки здесь
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant List'),
      ),
      body: restaurants.isNotEmpty
          ? ListView.builder(
              itemCount: restaurants.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(restaurants[index].name),
                  // subtitle: Text(
                  //     'Cuisine: ${restaurants[index].description}, Rating: ${restaurants[index].description}'),
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
class Restaurant {
  final int id;
  final String name;
  final String description;
  final String address;
  final int ownerId;
  final String type;

  Restaurant({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.ownerId,
    required this.type,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['id'],
      name: json['name'],
      description: json['description'] ?? '', // Добавлено для предотвращения ошибки, если 'description' отсутствует
      address: json['address'] ?? '', // Добавлено для предотвращения ошибки, если 'address' отсутствует
      ownerId: json['owner_id'],
      type: json['type'],
    );
  }
}


