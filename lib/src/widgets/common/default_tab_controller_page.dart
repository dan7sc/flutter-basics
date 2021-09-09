import 'package:flutter/material.dart';

class DefaultTabControllerPage extends StatelessWidget {
  final List<Tab> _tabs = [
    Tab(text: 'List', icon: Icon(Icons.list)),
    Tab(text: 'Map', icon: Icon(Icons.map)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab'),
          bottom: TabBar(
            tabs: _tabs,
          ),
        ),
        body: TabBarView(
          children: _tabs.map((tab) {
            return Center(
              child: Text(tab.text!),
            );
          }).toList(),
        ),
      ),
    );
  }
}
