import 'package:flutter/material.dart';

class ListViewSeparated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(height: 8);
      },
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          child: Center(
            child: Text(
              'Dynamic Box ${index + 1}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      },
    );
  }
}
