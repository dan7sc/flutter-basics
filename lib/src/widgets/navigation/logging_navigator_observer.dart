import 'package:flutter/material.dart';

class LoggingNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    if(previousRoute != null) {
      print('push: ${_routeName(previousRoute)} -> ${_routeName(route)}');
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    if(previousRoute != null) {
      print('pop: ${_routeName(route)} -> ${_routeName(previousRoute)}');
    }
  }

  String _routeName(Route? route) {
    return route != null
      ? (route.settings.name ?? route.runtimeType.toString())
      : 'null';
  }
}
