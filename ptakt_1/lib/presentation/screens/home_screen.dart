import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  late final String selectedCategory;
  final List<String> categories;

  HomeScreen({required this.selectedCategory, required this.categories});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String _selectedCategory;

  @override
  void initState() {
    super.initState();
    _selectedCategory = widget.selectedCategory;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 8.0,
              children: widget.categories.map((category) {
                return FilterChip(
                  label: Text(category),
                  selected: _selectedCategory == category,
                  onSelected: (isSelected) {
                    setState(() {
                      _selectedCategory = isSelected ? category : '';
                      // Add logic for filtering by category
                    });
                  },
                );
              }).toList(),
            ),
            Text('Content of Home Page'),
          ],
        ),
      ),
    );
  }
}
