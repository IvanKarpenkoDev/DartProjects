import 'package:flutter_bloc/flutter_bloc.dart';
import 'profile_screen_state.dart';
import 'profile_screen_event.dart';

class ProfileScreenBloc extends Bloc<ProfileScreenEvent, ProfileScreenState> {
  ProfileScreenBloc() : super(ProfileScreenState()) {
    // Инициализируем начальное состояние блока
  }

  @override
Stream<ProfileScreenState> mapEventToState(ProfileScreenEvent event) async* {
  if (event is UserNameChangedEvent) {
    yield ProfileScreenState(userName: event.newUserName, userEmail: state.userEmail);
  } else if (event is UserEmailChangedEvent) {
    yield ProfileScreenState(userName: state.userName, userEmail: event.newUserEmail);
  }
}
}
