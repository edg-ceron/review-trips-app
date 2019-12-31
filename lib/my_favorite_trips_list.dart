import 'package:flutter/material.dart';
import 'package:trip_app/my_favorite_trip_image.dart';

class MyFavoriteTripsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 550.0,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          MyFavoriteTripImage('assets/img/bahamas_1.jpg', 'Bahamas', 'It is a long established fact that a reader will be ...', 'Steps 123.122.000'),
          MyFavoriteTripImage('assets/img/bahamas.jpg', 'New York', 'It is a long established fact that a reader will be ...', 'Steps 123.122.000'),
          MyFavoriteTripImage('assets/img/bahamas_2.jpg', 'L.A', 'It is a long established fact that a reader will be ...', 'Steps 123.122.000'),
          MyFavoriteTripImage('assets/img/bahamas_3.jpg', 'Cataratas', 'It is a long established fact that a reader will be ...', 'Steps 123.122.000'),
          MyFavoriteTripImage('assets/img/bahamas_4.jpg', 'Isla mujeres', 'It is a long established fact that a reader will be ...', 'Steps 123.122.000')
        ],
      ),
    );
  }
}