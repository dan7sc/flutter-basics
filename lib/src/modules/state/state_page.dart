import 'package:flutter/material.dart';
import 'package:flutter_basics/src/widgets/state/bloc/users_bloc.dart';
import 'package:flutter_basics/src/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatePage extends StatefulWidget {
  StatePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _StatePageState createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  UsersClient usersClient = UsersClient();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UsersBloc(usersClient: usersClient),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title ?? 'Service Page'),
        ),
        body: Center(
          child: UsersPage(usersClient: usersClient),
        ),
      ),
    );
  }
}
