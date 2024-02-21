abstract class SettingsScreenEvent {}

class DarkModeToggledEvent extends SettingsScreenEvent {
  final bool isEnabled;

  DarkModeToggledEvent(this.isEnabled);
}
