import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'service_users.dart';
import 'users_action.dart';
import 'users_client.dart';
import 'users_state.dart';

UsersState usersReducers(UsersState state, dynamic action) {
  if (action is LoadUserAction) {
    return state.copyWith(loading: true);
  } else if (action is UserLoadErrorAction) {
    return state.copyWith(loading: false, error: true);
  } else if (action is UserLoadedAction) {
    return state.copyWith(loading: false, data: action.users);
  }
  return state;
}

ThunkAction<UsersState> getUsers(UsersClient usersClient, String keyword) {
  return (Store<UsersState> store) async {
    store.dispatch(LoadUserAction(keyword: keyword));
    try {
      List<User> users = await usersClient.getUsers(keyword);
      store.dispatch(UserLoadedAction(users: users));
    } catch (e) {
      store.dispatch(UserLoadErrorAction());
    }
  };
}
