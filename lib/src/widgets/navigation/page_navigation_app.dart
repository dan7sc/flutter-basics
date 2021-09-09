import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Sign Up'),
          onPressed: () {
            Navigator.pushNamed(context, '/sign_up');
          },
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Back to home'),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}

class PageNavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Navigation',
      home: Text('Home Page'),
      initialRoute: '/log_in',
      routes: {
        '/sign_up': (context) => SignUpPage(),
        '/log_in': (context) => LogInPage(),
      }
    );
  }
}
