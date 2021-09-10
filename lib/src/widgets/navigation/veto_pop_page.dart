import 'package:flutter/material.dart';

class VetoPopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context)!.addScopedWillPopCallback(() async {
      return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Exit?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: Text('Yes'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text('No'),
              ),
            ],
          );
        },
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Veto Pop'),
      ),
      body: Container(child: null),
    );
  }
}
