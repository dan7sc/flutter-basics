import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DisplayDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Show SimpleDialog'),
              onPressed: () async {
                String result = await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      title: Text('Choose Color'),
                      children: [
                        SimpleDialogOption(
                          child: Text('Red'),
                          onPressed: () {
                            Navigator.pop(context, 'Red');
                          },
                        ),
                        SimpleDialogOption(
                          child: Text('Green'),
                          onPressed: () {
                            Navigator.pop(context, 'Green');
                          },
                        ),
                      ],
                    );
                  },
                );
                print(result);
              },
            ),
            ElevatedButton(
              child: Text('Show AlertDialog'),
              onPressed: () async {
                bool? result = await showDialog<bool>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Delete'),
                      content: Text('Delete this item?'),
                      actions: [
                        TextButton(
                          child: Text('Yes'),
                          onPressed: () {
                            Navigator.pop(context, true);
                          },
                        ),
                        TextButton(
                          child: Text('No'),
                          onPressed: () {
                            Navigator.pop(context, false);
                          },
                        ),
                      ],
                    );
                  },
                );
                print(result);
              },
            ),
            CupertinoButton(
              padding: EdgeInsets.all(8.0),
              color: Colors.blue.shade500,
              child: Text('Show Cupertino Alert Dialog'),
              onPressed: () async {
                bool? result = await showCupertinoDialog<bool>(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoAlertDialog(
                      title: Text('Delete'),
                      content: Text('Delete this item?'),
                      actions: [
                        CupertinoDialogAction(
                          child: Text('Delete'),
                          onPressed: () {
                            Navigator.pop(context, true);
                          },
                          isDestructiveAction: true,
                        ),
                        CupertinoDialogAction(
                          child: Text('Cancel'),
                          onPressed: () {
                            Navigator.pop(context, false);
                          },
                        ),
                      ],
                    );
                  },
                );
                print(result);
              },
            ),
            SizedBox(height: 8.0),
            CupertinoButton(
              color: Colors.blue.shade500,
              padding: EdgeInsets.all(8.0),
              child: Text('Show Action Sheet'),
              onPressed: () async {
                String? result = await showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoActionSheet(
                      title: Text('Please select an action'),
                      actions: [
                        CupertinoActionSheetAction(
                          child: Text('Duplicate'),
                          isDefaultAction: true,
                          onPressed: () {
                            Navigator.pop(context, 'duplicate');
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Text('Move'),
                          onPressed: () {
                            Navigator.pop(context, 'move');
                          },
                        ),
                        CupertinoActionSheetAction(
                            isDestructiveAction: true,
                            child: Text('Delete'),
                            onPressed: () {
                              Navigator.pop(context, 'delete');
                            })
                      ],
                      cancelButton: CupertinoActionSheetAction(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    );
                  },
                );
                print(result);
              },
            ),
          ],
        ),
      ),
    );
  }
}
