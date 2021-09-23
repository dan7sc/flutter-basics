import 'package:mobx/mobx.dart';

import 'service_users.dart';
import 'users_client.dart';

part 'users_store.g.dart';

class UsersStore = _UsersStore with _$UsersStore;

abstract class _UsersStore with Store {
  _UsersStore({
    required this.usersClient,
  }) : assert(usersClient != null);

  final UsersClient? usersClient;

  @observable
  String keyword = '';

  @observable
  ObservableFuture<List<User>> getUsersFuture = emptyResponse;

  @computed
  bool get empty => getUsersFuture == emptyResponse;

  @computed
  bool get hasResult =>
      getUsersFuture != emptyResponse &&
      getUsersFuture.status == FutureStatus.fulfilled;

  @computed
  bool get loading =>
      getUsersFuture != emptyResponse &&
      getUsersFuture.status == FutureStatus.pending;

  @computed
  bool get hasError =>
      getUsersFuture != emptyResponse &&
      getUsersFuture.status == FutureStatus.rejected;

  static ObservableFuture<List<User>> emptyResponse =
      ObservableFuture.value([]);

  List<User> users = [];

  @action
  Future<List<User>> getUsers() async {
    users = [];
    final future = usersClient!.getUsers(keyword);
    getUsersFuture = ObservableFuture(future);

    return users = await future;
  }

  @action
  void setKeyword(String keyword) {
    getUsersFuture = emptyResponse;
    this.keyword = keyword;
  }
}
