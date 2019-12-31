import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trip_app/home_trips.dart';
import 'package:trip_app/profile_trips.dart';
import 'package:trip_app/search_trips.dart';

class ContentTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.indigo),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.indigo),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.indigo),
                title: Text("")
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips()
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;
          }
        },
      ),
    );
  }

}