// В файле home_screen_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_screen_event.dart' as events;
import 'home_screen_state.dart' as states;

class HomeScreenBloc extends Bloc<events.HomeScreenEvent, states.HomeScreenState> {
  HomeScreenBloc()
      : super(
            states.HomeScreenState(selectedCategory: '', categories: []),
          );

  @override
 Stream<states.HomeScreenState> mapEventToState(events.HomeScreenEvent event) async* {
    if (event is events.CategorySelectedEvent) {
      yield state.copyWith(selectedCategory: event.selectedCategory);
    } else if (event is events.NavigateToScreenEvent) {
      // Implement navigation logic here
    }
  }
}
