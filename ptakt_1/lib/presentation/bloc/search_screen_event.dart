abstract class SearchScreenEvent {}

class SearchTextChangedEvent extends SearchScreenEvent {
  final String newText;

  SearchTextChangedEvent(this.newText);
}
