import 'package:flutter/material.dart';
import 'package:flutter_basics/src/widgets/widgets.dart';

import 'modules/home/home_page.dart';

class App extends StatelessWidget {
  final RouteObserver<PageRoute<dynamic>> routeObserver = RouteObserver<PageRoute<dynamic>>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ObservedPage(routeObserver),
      initialRoute: '/user',
      routes: {
        '/user': (context) => UserOnBoardingPage(),
      }
    );
  }
}
