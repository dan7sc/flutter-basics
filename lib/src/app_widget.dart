import 'package:flutter/material.dart';
import 'package:flutter_basics/src/widgets/widgets.dart';

import 'modules/home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings settings) {
        print('${settings.name}');
        if (settings.name == '/edit_user') {
          return MaterialPageRoute<UserDetails>(
            settings: settings,
            builder: (context) {
              return EditUserDetailsPage(settings.arguments as UserDetails);
            },
          );
        }
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return HomePage(title: 'AppBar');
          },
        );
      },
      routes: {
        '/user': (context) => UserDetailsPage(),
      },

      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: UserDetailsPage(),
      // initialRoute: '/log_in',
      // routes: {
      //   '/sign_up': (context) => SignUpPage(),
      //   '/log_in': (context) => LogInPage(),
      // }
    );
  }
}
