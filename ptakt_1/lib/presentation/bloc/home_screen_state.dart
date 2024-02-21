// В файле home_screen_state.dart
import 'package:flutter/material.dart';

class HomeScreenState {
  final String selectedCategory;
  final List<String> categories;

  HomeScreenState({required this.selectedCategory, required this.categories});

  HomeScreenState copyWith({
    String? selectedCategory,
    List<String>? categories,
  }) {
    return HomeScreenState(
      selectedCategory: selectedCategory ?? this.selectedCategory,
      categories: categories ?? this.categories,
    );
  }
}