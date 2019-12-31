import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class ContentTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContentTrips();
  }
}

class _ContentTrips extends State<ContentTrips> {
  int indexTab = 0;
  final List<Widget> widgetsChildrens = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTabTapped (int index) {
    setState(() {
      indexTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: widgetsChildrens[indexTab],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.deepPurple
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: indexTab,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('')
            ),
          ]
        ),
      ),
    );
  }
}