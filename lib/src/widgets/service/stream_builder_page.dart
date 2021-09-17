import 'package:flutter/material.dart';

class StreamBuilderPage extends StatelessWidget {
  final Stream<int> _stream =
      Stream.periodic(Duration(seconds: 1), (int value) => value * 10).take(5);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder(
        stream: _stream,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.active:
            case ConnectionState.done:
              if (snapshot.hasData) {
                return Text('${snapshot.data ?? ""}');
              } else if (snapshot.hasError) {
                return Text(
                  '${snapshot.error}',
                  style: TextStyle(color: Colors.red),
                );
              }
          }
          return Container(child: null);
        },
      ),
    );
  }
}
