import 'package:flutter/material.dart';

class TableWithDifferentColumnWidth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.blue.shade200),
      columnWidths: {
        0: FixedColumnWidth(100),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(2),
        3: FractionColumnWidth(0.2),
      },
      children: [
        TableRow(
          children: [
            Text('A'),
            Text('B'),
            Text('C'),
            Text('D'),
          ],
        ),
        TableRow(
          children: [
            Text('E'),
            Text('F'),
            Text('G'),
            Text('H'),
          ],
        ),
        TableRow(
          children: [
            Text('I'),
            Text('J'),
            Text('K'),
            Text('L'),
          ],
        ),
      ],
    );
  }
}
