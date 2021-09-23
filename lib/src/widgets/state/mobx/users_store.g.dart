// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UsersStore on _UsersStore, Store {
  Computed<bool>? _$emptyComputed;

  @override
  bool get empty => (_$emptyComputed ??=
          Computed<bool>(() => super.empty, name: '_UsersStore.empty'))
      .value;
  Computed<bool>? _$hasResultComputed;

  @override
  bool get hasResult => (_$hasResultComputed ??=
          Computed<bool>(() => super.hasResult, name: '_UsersStore.hasResult'))
      .value;
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??=
          Computed<bool>(() => super.loading, name: '_UsersStore.loading'))
      .value;
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??=
          Computed<bool>(() => super.hasError, name: '_UsersStore.hasError'))
      .value;

  final _$keywordAtom = Atom(name: '_UsersStore.keyword');

  @override
  String get keyword {
    _$keywordAtom.reportRead();
    return super.keyword;
  }

  @override
  set keyword(String value) {
    _$keywordAtom.reportWrite(value, super.keyword, () {
      super.keyword = value;
    });
  }

  final _$getUsersFutureAtom = Atom(name: '_UsersStore.getUsersFuture');

  @override
  ObservableFuture<List<User>> get getUsersFuture {
    _$getUsersFutureAtom.reportRead();
    return super.getUsersFuture;
  }

  @override
  set getUsersFuture(ObservableFuture<List<User>> value) {
    _$getUsersFutureAtom.reportWrite(value, super.getUsersFuture, () {
      super.getUsersFuture = value;
    });
  }

  final _$getUsersAsyncAction = AsyncAction('_UsersStore.getUsers');

  @override
  Future<List<User>> getUsers() {
    return _$getUsersAsyncAction.run(() => super.getUsers());
  }

  final _$_UsersStoreActionController = ActionController(name: '_UsersStore');

  @override
  void setKeyword(String keyword) {
    final _$actionInfo = _$_UsersStoreActionController.startAction(
        name: '_UsersStore.setKeyword');
    try {
      return super.setKeyword(keyword);
    } finally {
      _$_UsersStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
keyword: ${keyword},
getUsersFuture: ${getUsersFuture},
empty: ${empty},
hasResult: ${hasResult},
loading: ${loading},
hasError: ${hasError}
    ''';
  }
}
