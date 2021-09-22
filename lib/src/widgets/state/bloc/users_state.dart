import 'package:equatable/equatable.dart';

import 'service_users.dart';

abstract class UsersState extends Equatable {
  UsersState([
    List props = const [],
  ]) : super();

  @override
  List get props => [];
}

class UsersEmpty extends UsersState {
  @override
  List get props => [];
}

class UsersError extends UsersState {
  @override
  List get props => [];
}

class UsersLoaded extends UsersState {
  UsersLoaded({this.users})
  : assert(users != null),
    super([users]);

  final List<User>? users;
}

class UsersLoading extends UsersState {
  @override
  List get props => [];
}
