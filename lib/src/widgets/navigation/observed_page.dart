import 'package:flutter/material.dart';

class ObservedPage extends StatefulWidget {
  ObservedPage(this.routeObserver);
  final RouteObserver<PageRoute<dynamic>> routeObserver;

  @override
  _ObservedPageState createState() => _ObservedPageState(routeObserver);
}

class _ObservedPageState extends State<ObservedPage> with RouteAware {
  _ObservedPageState(this._routeObserver);
  final RouteObserver<PageRoute<dynamic>> _routeObserver;

  @override
  void didChangeDependencies() {
    print('subscribed');
    super.didChangeDependencies();
    _routeObserver.subscribe(this,
        MaterialPageRoute(builder: (BuildContext context) {
      return Container();
    }));
  }

  @override
  void dispose() {
    print('unsubscribed');
    _routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    print('pushed');
  }

  @override
  void didPop() {
    print('popped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Observed (Stateful)')),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 200,
          child: ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Unsubscribe this page'),
          ),
        ),
      ),
    );
  }
}
