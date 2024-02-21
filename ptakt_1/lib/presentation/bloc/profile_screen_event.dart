abstract class ProfileScreenEvent {}

class UserNameChangedEvent extends ProfileScreenEvent {
  final String newUserName;

  UserNameChangedEvent(this.newUserName);
}

class UserEmailChangedEvent extends ProfileScreenEvent {
  final String newUserEmail;

  UserEmailChangedEvent(this.newUserEmail);
}
