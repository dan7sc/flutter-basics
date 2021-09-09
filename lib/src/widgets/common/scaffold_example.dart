import 'package:flutter/material.dart';

class ScaffoldExample extends StatefulWidget {
  @override
  _ScaffoldExampleState createState() => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Container(color: Colors.red.shade200),
    Container(color: Colors.green.shade200),
    Container(color: Colors.blue.shade200),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (_) {
                return SizedBox(
                  height: 100,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: Center(child: Text("Bottom 1")),
                      ),
                      SizedBox(
                        height: 50,
                        child: Center(child: Text("Bottom 2")),
                      ),
                    ],
                  ),
                );
              });
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text('JL'),
              ),
              accountName: Text('John Lennon'),
              accountEmail: Text('john.lennon@example.com'),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('History'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: 'Cake',
            backgroundColor: Colors.red.shade300,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
            backgroundColor: Colors.green.shade300,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Alarm',
            backgroundColor: Colors.blue.shade300,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _screens[_currentIndex],
    );
  }
}
