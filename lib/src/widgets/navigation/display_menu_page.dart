import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DisplayMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Show Menu'),
              onPressed: () async {
                String? result = await showMenu<String>(
                  context: context,
                  position: RelativeRect.fromLTRB(0, 0, 0, 0),
                  items: [
                    PopupMenuItem(
                      value: 'red',
                      child: Text('Red'),
                    ),
                    PopupMenuDivider(),
                    CheckedPopupMenuItem(
                      value: 'green',
                      checked: true,
                      child: Text('Green'),
                    ),
                  ],
                  initialValue: 'green',
                );
                print(result);
              },
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<String>>[
                  PopupMenuItem(
                    value: 'red',
                    child: Text('Red'),
                  ),
                  PopupMenuDivider(),
                  CheckedPopupMenuItem(
                    value: 'green',
                    checked: true,
                    child: Text('Green'),
                  ),
                ];
              },
              initialValue: 'green',
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                color: Colors.blue.shade500,
                child: Text(
                  'Select color',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onSelected: (String value) {
                print(value);
              },
              onCanceled: () {
                print('no selections');
              },
            ),
          ],
        ),
      ),
    );
  }
}
