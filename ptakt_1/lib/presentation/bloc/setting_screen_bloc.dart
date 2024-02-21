import 'package:flutter_bloc/flutter_bloc.dart';
import 'setting_screen_state.dart';
import 'settings_screen_event.dart';

class SettingsScreenBloc extends Bloc<SettingsScreenEvent, SettingsScreenState> {
  SettingsScreenBloc() : super(SettingsScreenState()) {
    // Инициализируем начальное состояние блока
  }

  @override
  Stream<SettingsScreenState> mapEventToState(SettingsScreenEvent event) async* {
    if (event is DarkModeToggledEvent) {
      yield SettingsScreenState(darkModeEnabled: event.isEnabled);
    }
  }
}
