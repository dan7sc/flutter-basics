import 'package:equatable/equatable.dart';

import 'service_users.dart';

abstract class UsersAction extends Equatable {
  UsersAction([List props = const []]) : super();
}

class LoadUserAction extends UsersAction {
  LoadUserAction({
    required this.keyword,
  })  : assert(keyword != null),
        super([keyword]);

  final String? keyword;

  @override
  List<Object?> get props => [];
}

class UserLoadedAction extends UsersAction {
  UserLoadedAction({
    required this.users,
  })  : assert(users != null),
        super([users]);

  final List<User>? users;

  @override
  List<Object?> get props => [];
}

class UserLoadErrorAction extends UsersAction {
  UserLoadErrorAction();

  @override
  List<Object?> get props => [];
}
