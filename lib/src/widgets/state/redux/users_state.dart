import 'package:equatable/equatable.dart';

import 'service_users.dart';

class UsersState extends Equatable {
  UsersState({
    bool? loading,
    bool? error,
    List<User>? data,
  })  : _loading = loading,
        _error = error,
        _data = data,
        super();

  final bool? _loading;
  final bool? _error;
  final List<User>? _data;

  bool get loading => _loading ?? false;
  bool get error => _error ?? false;
  List<User> get data => _data ?? [];
  bool get empty => _loading == null && _error == null && _data == null;

  UsersState copyWith({
    bool? loading,
    bool? error,
    List<User>? data,
  }) {
    return UsersState(
      loading: loading ?? this._loading,
      error: error ?? this._error,
      data: data ?? this._data,
    );
  }

  @override
  List<Object?> get props => [];
}
