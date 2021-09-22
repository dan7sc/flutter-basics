import 'package:equatable/equatable.dart';

abstract class UsersEvent extends Equatable {
  UsersEvent([
    List props = const [],
  ]) : super();

  @override
  List get props => [];
}

class GetUsersEvent extends UsersEvent {
  GetUsersEvent({
    required this.keyword,
  })  : assert(keyword != null),
        super([keyword]);

  final String? keyword;
}
