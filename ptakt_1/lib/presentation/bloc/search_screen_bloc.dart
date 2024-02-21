import 'package:flutter_bloc/flutter_bloc.dart';
import 'search_screen_state.dart';
import 'search_screen_event.dart';

class SearchScreenBloc extends Bloc<SearchScreenEvent, SearchScreenState> {
  SearchScreenBloc() : super(SearchScreenState()) {
    // Инициализируем начальное состояние блока
  }

  @override
Stream<SearchScreenState> mapEventToState(SearchScreenEvent event) async* {
  if (event is SearchTextChangedEvent) {
    yield SearchScreenState(searchText: event.newText);
  }
}
}
