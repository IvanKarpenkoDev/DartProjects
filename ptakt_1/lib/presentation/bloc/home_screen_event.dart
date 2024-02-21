// В файле home_screen_event.dart
abstract class HomeScreenEvent {}

class CategorySelectedEvent extends HomeScreenEvent {
  final String selectedCategory;

  CategorySelectedEvent(this.selectedCategory);
}

class NavigateToScreenEvent extends HomeScreenEvent {
  final int index;

  NavigateToScreenEvent(this.index);
}