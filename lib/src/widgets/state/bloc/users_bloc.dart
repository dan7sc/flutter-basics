import 'package:flutter_bloc/flutter_bloc.dart';

import 'service_users.dart';
import 'users_client.dart';
import 'users_event.dart';
import 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc({
    required this.usersClient,
  })  : assert(usersClient != null),
        super(UsersEmpty());

  UsersClient? usersClient;

  void dispose() {
    usersClient = null;
  }

  @override
  Stream<UsersState> mapEventToState(UsersEvent event) async* {
    if (event is GetUsersEvent) {
      yield UsersLoading();
      try {
        List<User> users = await usersClient!.getUsers(event.keyword);
        yield UsersLoaded(users: users);
      } catch (e) {
        yield UsersError();
      }
    }
  }
}
