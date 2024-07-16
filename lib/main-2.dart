import 'package:flutter/material.dart';
import 'missions.dart';

void main() {
  runApp(AllTrips1());
}

class AllTrips1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AllTrips1Home(),
    );
  }
}

class AllTrips1Home extends StatefulWidget {
  @override
  _AllTrips1HomeState createState() => _AllTrips1HomeState();
}

class _AllTrips1HomeState extends State<AllTrips1Home> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    MissionsPage(), 
    Text(
      'Trips Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Profile Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Menu Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/home-active.png')),
            label: 'Görevler',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/trips-active.png')),
            label: 'Geziler',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/notifications.png')),
            label: 'Bildirimler',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/menu.png')),
            label: 'Menü',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}